import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';

import 'package:money_tracker/ui/theme/theme.dart';
import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog_footer.dart';
import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog_header.dart';

class MonthYearDialog extends StatefulWidget {
  const MonthYearDialog({super.key});

  @override
  State<MonthYearDialog> createState() => _MonthYearDialogState();
}

class _MonthYearDialogState extends State<MonthYearDialog> {
  late DateTime _dateTime;
  late int _month;
  late int _year;

  @override
  void initState() {
    _dateTime = context.read<ExpenseCubit>().state.currentDate;
    _month = _dateTime.month;
    _year = _dateTime.year;
    super.initState();
  }

  void _monthClick(int index) {
    setState(() {
      _month = index + 1;
      _dateTime = DateTime(_year, _month, 1);
    });
  }

  void _arrowUpClick() {
    setState(() {
      _year -= 1;
      _dateTime = DateTime(_year, _month, 1);
    });
  }

  void _arrowDownClick() {
    setState(() {
      _year += 1;
      _dateTime = DateTime(_year, _month, 1);
    });
  }

  void _setCurrentDate() {
    setState(() {
      context.read<ExpenseCubit>().loadMonthExpenses(_dateTime);
      Navigator.of(context).pop();
    });
  }

  String _getShortMonth(int monthNumber) {
    var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
    String month =
        toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime))!;
    return month.substring(0, 3);
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = themeData.colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MonthYearDialogHeader(
          year: _year,
          month: _month,
          arrowUpClick: _arrowUpClick,
          arrowDownClick: _arrowDownClick,
        ),
        SizedBox(height: 25),
        SizedBox(
          height: 180,
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 1.8,
            mainAxisSpacing: 30,
            children: [
              ...List.generate(
                12,
                (index) => Ink(
                  decoration: ShapeDecoration(
                    color: _month == index + 1
                        ? colorScheme.primary
                        : Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Text(
                      _getShortMonth(index + 1),
                      style: TextStyle(
                        fontSize: 12,
                        color:
                            _month == index + 1 ? Colors.white : Colors.black,
                      ),
                    ),
                    splashRadius: 25,
                    onPressed: () => _monthClick(index),
                  ),
                ),
              ).toList()
            ],
          ),
        ),
        SizedBox(height: 20),
        MonthYearDialogFooter(setCurrentDate: _setCurrentDate),
      ],
    );
  }
}
