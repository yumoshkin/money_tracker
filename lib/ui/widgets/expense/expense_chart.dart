import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:money_tracker/data/models/expense/expense.dart';

Map<String, Color> colorMap = {
  'red': Colors.red,
  'orange': Colors.orange,
  'yellow': Colors.yellow,
  'green': Colors.green,
  'cyan': Colors.cyan,
  'blue': Colors.blue,
  'purple': Colors.purple,
  'black': Colors.black,
  'redAccent': Colors.redAccent,
  'orangeAccent': Colors.orangeAccent,
  'yellowAccent': Colors.yellowAccent,
  'greenAccent': Colors.greenAccent,
  'cyanAccent': Colors.cyanAccent,
  'blueAccent': Colors.blueAccent,
  'purpleAccent': Colors.purpleAccent,
};

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: const Color(0xffd0d0d0).withOpacity(0.3),
      child: PieChart(
        PieChartData(
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: _sections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> _sections() {
    return expenses
        .map(
          (expense) => PieChartSectionData(
            title: expense.categoryName,
            value: expense.sum,
            color: colorMap[expense.color],
            radius: 50.0,
            titleStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
        .toList();
  }
}
