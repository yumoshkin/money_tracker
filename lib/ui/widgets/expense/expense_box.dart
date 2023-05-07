import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/ui/screens/login_screen.dart';
import 'package:money_tracker/ui/theme/theme.dart';
import 'package:money_tracker/ui/widgets/expense/expense_chart.dart';
import 'package:money_tracker/ui/widgets/expense/expense_category_list.dart';
import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog.dart';

class ExpenseBox extends StatelessWidget {
  const ExpenseBox({
    Key? key,
    required this.expenses,
    required this.showCategoryRecords,
  }) : super(key: key);
  final List<Expense> expenses;
  final Function(int categoryIndex) showCategoryRecords;

  @override
  Widget build(BuildContext context) {
    final title = context.read<ExpenseCubit>().state.monthYearTitle;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: themeData.colorScheme.primary,
        ),
        backgroundColor: themeData.colorScheme.primary,
        title: GestureDetector(
          onTap: () => showDialog(
            context: context,
            builder: (BuildContext context) => const Dialog(
              child: MonthYearDialog(),
            ),
          ),
          child: Text(title),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () {
                context.read<AuthCubit>().signout();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ExpenseChart(expenses: expenses),
          Expanded(
            child: ExpenseCategoryList(
              expenses: expenses,
              showCategoryRecords: showCategoryRecords,
            ),
          ),
        ],
      ),
    );
  }
}
