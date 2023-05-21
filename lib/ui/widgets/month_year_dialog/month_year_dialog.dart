import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog_footer.dart';
import 'package:money_tracker/ui/widgets/month_year_dialog/month_year_dialog_header.dart';

class MonthYearDialog extends StatefulWidget {
  const MonthYearDialog({
    super.key,
    required this.date,
    required this.selectedMonthColor,
  });
  final DateTime date;
  final Color selectedMonthColor;

  @override
  State<MonthYearDialog> createState() => _MonthYearDialogState();
}

class _MonthYearDialogState extends State<MonthYearDialog> {
  late int _month;
  late int _year;

  @override
  void initState() {
    _year = widget.date.year;
    _month = widget.date.month;
    super.initState();
  }

  void _monthClick(int index) {
    setState(() {
      _month = index + 1;
    });
  }

  void _arrowUpClick() {
    setState(() {
      _year -= 1;
    });
  }

  void _arrowDownClick() {
    setState(() {
      _year += 1;
    });
  }

  String _getCapitalShortMonth(int monthNumber) {
    var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
    String month =
        toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime))!;
    return month.substring(0, 3);
  }

  void _submit() {
    setState(() {
      final newDate = DateTime(_year, _month, 1);
      Navigator.of(context).pop(newDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MonthYearDialogHeader(
          year: _year,
          month: _month,
          arrowUpClick: _arrowUpClick,
          arrowDownClick: _arrowDownClick,
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 180,
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 2.0,
            mainAxisSpacing: 30,
            children: [
              ...List.generate(
                12,
                (index) => Ink(
                  decoration: ShapeDecoration(
                    color: _month == index + 1
                        ? widget.selectedMonthColor
                        : Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Text(
                      _getCapitalShortMonth(index + 1),
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
        const SizedBox(height: 20),
        MonthYearDialogFooter(submit: _submit),
      ],
    );
  }
}
