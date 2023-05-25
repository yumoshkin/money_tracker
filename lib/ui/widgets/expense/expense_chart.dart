import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/ui/utils/extentions.dart';
import 'package:money_tracker/ui/utils/functions.dart';

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key, required this.expenses});
  final List<Expense> expenses;

  bool _isExpenseExist(List<Expense> expenses) {
    if (expenses.isEmpty) {
      return false;
    }

    for (var expense in expenses) {
      if (expense.records.isNotEmpty) {
        return true;
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    String month = '';
    bool isExpenseExist = _isExpenseExist(expenses);
    if (!isExpenseExist) {
      month = getCapitalCaseMonth(context.read<ExpenseCubit>().state.month);
    }

    return Container(
      height: 240,
      color: const Color(0xffd0d0d0).withOpacity(0.3),
      child: isExpenseExist
          ? PieChart(
              PieChartData(
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: _sections(),
              ),
            )
          : Center(
              child: Text(
                'За $month нет расходов',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
    );
  }

  List<PieChartSectionData> _sections() {
    return expenses
        .map(
          (expense) => PieChartSectionData(
            title: expense.category.name,
            value: expense.sum,
            color: expense.category.color.toColor(),
            radius: 50.0,
            titleStyle: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
        .toList();
  }
}
