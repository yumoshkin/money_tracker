import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/ui/widgets/expense/expense_chart.dart';

class RecordList extends StatelessWidget {
  const RecordList({
    Key? key,
    required this.expense,
    required this.showCategories,
  }) : super(key: key);
  final Expense expense;
  final Function() showCategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: colorMap[expense.color],
        ),
        backgroundColor: colorMap[expense.color],
        title: Text(expense.categoryName),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.only(left: 32),
          onPressed: showCategories,
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: expense.records.isEmpty
          ? const Center(
              child: Text(
                'Нет данных',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: expense.records.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 25),
                    title: Text(
                      expense.records[index].cost.toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      expense.records[index].createdAt.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
