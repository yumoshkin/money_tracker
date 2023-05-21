import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:money_tracker/ui/theme/theme.dart';

class MonthYearDialogHeader extends StatelessWidget {
  const MonthYearDialogHeader({
    Key? key,
    required this.year,
    required this.month,
    required this.arrowUpClick,
    required this.arrowDownClick,
  }) : super(key: key);
  final int year;
  final int month;
  final Function() arrowUpClick;
  final Function() arrowDownClick;

  String _getMonth(int monthNumber) {
    var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
    String month =
        toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime))!;
    return month;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      decoration: BoxDecoration(
        color: themeData.colorScheme.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Text(
                      _getMonth(month),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 54,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          year.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    color: Colors.white,
                    onPressed: arrowUpClick,
                    icon: const Icon(Icons.keyboard_arrow_up),
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    color: Colors.white,
                    onPressed: arrowDownClick,
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
