import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
  bool _isListening = false;

  ExpenseCubit({
    required this.authCubit,
    required this.categoryCubit,
    required this.recordCubit,
  }) : super(
          ExpenseState.empty(
              year: DateTime.now().year, month: DateTime.now().month),
        ) {
    categorySubscription = categoryCubit.stream.listen((state) {
      if (_isListening &&
          (state is CategoryStateLoaded || state is CategoryStateEmpty)) {
        reloadMonthExpenses();
      }
    });

    recordSubscription = recordCubit.stream.listen((state) {
      if (_isListening &&
          (state is RecordStateLoaded || state is RecordStateEmpty)) {
        reloadMonthExpenses();
      }
    });
  }
  final AuthCubit authCubit;
  final CategoryCubit categoryCubit;
  final RecordCubit recordCubit;

  Future<void> init() async {
    int year = DateTime.now().year;
    int month = DateTime.now().month;

    try {
      emit(ExpenseState.loading(year: year, month: month));

      await categoryCubit.loadCategoriesByUserId(authCubit.state.user!.uid);
      await recordCubit.loadRecords();
      await loadMonthExpenses(year, month);

      _isListening = true;
    } catch (e) {
      emit(ExpenseState.error(year: year, month: month, error: e.toString()));
    }
  }

  Future<void> loadMonthExpenses(int year, int month) async {
    try {
      emit(ExpenseState.loading(year: year, month: month));

      final monthExpenses = getMonthExpenses(year, month);
      if (monthExpenses.isNotEmpty) {
        emit(
          ExpenseState.loaded(
            year: year,
            month: month,
            expenses: monthExpenses,
          ),
        );
      } else {
        emit(ExpenseState.empty(year: year, month: month));
      }
    } catch (e) {
      emit(
        ExpenseState.error(year: year, month: month, error: e.toString()),
      );
    }
  }

  Future<void> reloadMonthExpenses() async {
    await loadMonthExpenses(state.year, state.month);
  }

  List<Expense> getMonthExpenses(int year, int month) {
    List<Expense> expenses = getCategoryList();
    return calcExpenses(year, month, expenses);
  }

  List<Expense> getCategoryList() {
    var index = 0;
    final List<Expense> categoryList = categoryCubit.state.categories.map(
      (category) {
        var expense = Expense(
          index: index,
          category: category,
          records: [],
          sum: 0,
        );
        index += 1;

        return expense;
      },
    ).toList();

    return categoryList;
  }

  List<Expense> calcExpenses(int year, int month, List<Expense> categoryList) {
    List<Expense> expenses = categoryList;
    List<Record> records = recordCubit.state.records;
    Map<String, int> categoryIdToIndexMap = {};

    for (var expense in expenses) {
      categoryIdToIndexMap[expense.category.id] = expense.index;
    }

    for (var record in records) {
      if (record.createdAt.year == year &&
          record.createdAt.month == month &&
          categoryIdToIndexMap[record.categoryId] != null) {
        expenses[categoryIdToIndexMap[record.categoryId]!].records.add(record);
        expenses[categoryIdToIndexMap[record.categoryId]!].sum += record.cost;
      }
    }

    return expenses;
  }
}
