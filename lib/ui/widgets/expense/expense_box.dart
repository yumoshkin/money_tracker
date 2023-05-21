import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/ui/theme/theme.dart';
import 'package:money_tracker/ui/utils/functions.dart';
import 'package:money_tracker/ui/widgets/category/category_form.dart';
import 'package:money_tracker/ui/widgets/expense/expense_chart.dart';
import 'package:money_tracker/ui/widgets/category/category_list.dart';
import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog.dart';

class ExpenseBox extends StatefulWidget {
  const ExpenseBox({
    Key? key,
    required this.expenses,
    required this.showCategoryRecords,
  }) : super(key: key);
  final List<Expense> expenses;
  final Function(int categoryIndex) showCategoryRecords;

  @override
  State<ExpenseBox> createState() => _ExpenseBoxState();
}

class _ExpenseBoxState extends State<ExpenseBox> {
  late int _year;
  late int _month;
  final Color _selectedMonthColor = themeData.colorScheme.primary;

  @override
  void initState() {
    _year = context.read<ExpenseCubit>().state.year;
    _month = context.read<ExpenseCubit>().state.month;
    super.initState();
  }

  void _setMonth() async {
    var date = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 25),
          child: MonthYearDialog(
            date: DateTime(_year, _month, 1),
            selectedMonthColor: _selectedMonthColor,
          ),
        );
      },
    );

    if (date == null) {
      return;
    }

    setState(() {
      _year = date.year;
      _month = date.month;
    });

    _loadMonthExpenses();
  }

  void _loadMonthExpenses() {
    context.read<ExpenseCubit>().loadMonthExpenses(_year, _month);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: themeData.colorScheme.primary,
        ),
        backgroundColor: themeData.colorScheme.primary,
        title: GestureDetector(
          onTap: _setMonth,
          child: Text(getMonthYearTitle(DateTime(_year, _month, 1))),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => const Dialog(
                  insetPadding: EdgeInsets.symmetric(horizontal: 25),
                  child: CategoryForm(category: null),
                ),
              ),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ExpenseChart(expenses: widget.expenses),
          Expanded(
            child: CategoryList(
              expenses: widget.expenses,
              showCategoryRecords: widget.showCategoryRecords,
            ),
          ),
        ],
      ),
    );
  }
}
