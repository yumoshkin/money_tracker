import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:money_tracker/ui/theme/theme.dart';

class DateInputDialogHeader extends StatelessWidget {
  const DateInputDialogHeader({
    Key? key,
    required this.date,
    required this.setDate,
  }) : super(key: key);
  final DateTime date;
  final Function(DateTime date) setDate;

  String _getTitle(DateTime dateTime) {
    var month = DateFormat('MMM').format(dateTime).substring(0, 3);
    var dayOfWeek = toBeginningOfSentenceCase(DateFormat('E').format(dateTime));
    return '${dateTime.day} $month ${dateTime.year}, $dayOfWeek';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.symmetric(horizontal: 25),
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
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Выберите дату',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      _getTitle(date),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                color: Colors.white,
                icon: const Icon(Icons.calendar_today),
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    locale: const Locale('ru', 'RU'),
                    context: context,
                    initialDate: date,
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    helpText: 'Выберите дату',
                    cancelText: 'Отмена',
                  );

                  if (newDate == null) {
                    return;
                  }

                  setDate(newDate);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
