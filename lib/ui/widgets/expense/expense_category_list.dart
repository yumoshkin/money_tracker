import 'package:flutter/material.dart';

import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/ui/widgets/expense/expense_chart.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({
    Key? key,
    required this.expenses,
    required this.showCategoryRecords,
  }) : super(key: key);
  final List<Expense> expenses;
  final Function(int categoryIndex) showCategoryRecords;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            dense: true,
            contentPadding: EdgeInsets.only(left: 25),
            title: Text(
              expenses[index].categoryName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              expenses[index].sum > 0
                  ? expenses[index].sum.toStringAsFixed(2)
                  : 'Добавить расход',
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(right: 10),
              color: colorMap[expenses[index].color],
              onPressed: () => showCategoryRecords(index),
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      ),
    );
  }
}
