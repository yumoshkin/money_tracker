import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/ui/widgets/expense/expense_box.dart';
import 'package:money_tracker/ui/widgets/record/record_list.dart';

class ExpenseView extends StatefulWidget {
  const ExpenseView({Key? key}) : super(key: key);

  @override
  State<ExpenseView> createState() => _ExpenseViewState();
}

class _ExpenseViewState extends State<ExpenseView> {
  bool _isShowCategoryRecords = false;
  int _index = 0;

  void _showCategories() {
    setState(() {
      _isShowCategoryRecords = false;
    });
  }

  void _showCategoryRecords(int categoryIndex) {
    setState(() {
      _isShowCategoryRecords = true;
      _index = categoryIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    return BlocBuilder<ExpenseCubit, ExpenseState>(
      builder: (context, state) {
        if (state is ExpenseStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is ExpenseStateLoaded || state is ExpenseStateEmpty) {
          return _isShowCategoryRecords
              ? RecordList(
                  expense: state.expenses[_index],
                  showCategories: _showCategories,
                )
              : ExpenseBox(
                  expenses: state.expenses,
                  showCategoryRecords: _showCategoryRecords,
                );
        }

        if (state is ExpenseStateError) {
          return Center(
            child: Text(
              'Ошибка при получении данных: ${state.error}',
              style: textStyle,
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
