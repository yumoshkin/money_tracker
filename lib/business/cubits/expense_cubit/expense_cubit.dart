import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart';
import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/data/models/record/record.dart';

part 'expense_state.dart';
part 'expense_cubit.freezed.dart';

@injectable
class ExpenseCubit extends Cubit<ExpenseState> {
  late StreamSubscription categorySubscription;
  late StreamSubscription recordSubscription;
  List<Expense> _monthExpenses = [];
  DateTime _currentDate = DateTime.now();
  bool _isListening = false;

  ExpenseCubit({
    required this.authCubit,
    required this.categoryCubit,
    required this.recordCubit,
  }) : super(ExpenseState.initial(
            currentDate: DateTime.now(), monthYearTitle: '')) {
    categorySubscription = categoryCubit.stream.listen((state) {
      if (_isListening && state is CategoryStateLoaded) {
        // loadExpenseCategories();
      }
    });

    recordSubscription = recordCubit.stream.listen((state) {
      if (_isListening && state is RecordStateLoaded) {
        // loadExpenseRecords();
      }
    });
  }
  final AuthCubit authCubit;
  final CategoryCubit categoryCubit;
  final RecordCubit recordCubit;

  Future<void> init() async {
    String monthYearTitle = getMonthYearTitle(_currentDate);

    try {
      emit(ExpenseState.loading(
        currentDate: _currentDate,
        monthYearTitle: getMonthYearTitle(_currentDate),
      ));

      await categoryCubit.loadCategories(authCubit.state.user!.uid);
      await recordCubit.loadRecords();
      await loadMonthExpenses(_currentDate);

      _isListening = true;
    } catch (e) {
      emit(ExpenseState.error(
        currentDate: _currentDate,
        monthYearTitle: monthYearTitle,
        error: e.toString(),
      ));
    }
  }

  Future<void> loadMonthExpenses(DateTime dateTime) async {
    _currentDate = dateTime;
    String monthYearTitle = getMonthYearTitle(_currentDate);

    try {
      emit(ExpenseState.loading(
        currentDate: _currentDate,
        monthYearTitle: monthYearTitle,
      ));

      _monthExpenses = getMonthExpenses(_currentDate);

      if (_monthExpenses.isNotEmpty) {
        emit(ExpenseState.loaded(
          currentDate: _currentDate,
          monthYearTitle: monthYearTitle,
          expenses: _monthExpenses,
        ));
      } else {
        emit(ExpenseState.initial(
          currentDate: _currentDate,
          monthYearTitle: monthYearTitle,
        ));
      }
    } catch (e) {
      emit(ExpenseState.error(
        currentDate: _currentDate,
        monthYearTitle: monthYearTitle,
        error: e.toString(),
      ));
    }
  }

  List<Expense> getMonthExpenses(DateTime dateTime) {
    List<Expense> expenses = getCategoryList();
    return calcExpenses(expenses, dateTime);
  }

  List<Expense> getCategoryList() {
    var index = 0;
    final List<Expense> categoryList = categoryCubit.state.categories.map(
      (category) {
        var expense = Expense(
          index: index,
          categoryId: category.id,
          categoryName: category.name,
          color: category.color,
          records: [],
          sum: 0,
        );
        index += 1;

        return expense;
      },
    ).toList();

    return categoryList;
  }

  List<Expense> calcExpenses(List<Expense> categoryList, DateTime dateTime) {
    List<Expense> expenses = categoryList;
    List<Record> records = recordCubit.state.records;
    Map<String, int> idToIndexMap = {};
    final year = dateTime.year;
    final month = dateTime.month;

    for (var category in categoryList) {
      idToIndexMap[category.categoryId] = category.index;
    }

    for (var record in records) {
      if (record.createdAt.year == year && record.createdAt.month == month) {
        expenses[idToIndexMap[record.categoryId]!].records.add(record);
        expenses[idToIndexMap[record.categoryId]!].sum += record.cost;
      }
    }

    return expenses;
  }

  String getMonthYearTitle(DateTime dateTime) {
    var month = toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime));
    var monthYearTitle = '$month ${dateTime.year}';
    return monthYearTitle;
  }
}
