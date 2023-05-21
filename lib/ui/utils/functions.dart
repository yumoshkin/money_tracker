import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// snackbar functions

void showSnackBarSuccess(BuildContext context, String message,
    [int durationSec = 2]) {
  showSnackBar(context, message, false, durationSec);
}

void showSnackBarError(BuildContext context, String message,
    [int durationSec = 5]) {
  showSnackBar(context, message, true, durationSec);
}

void showSnackBar(BuildContext context, String message, bool error,
    [int durationSec = 2]) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 16),
    ),
    backgroundColor: error ? Colors.red : Colors.green,
    elevation: 4,
    duration: Duration(seconds: durationSec),
    showCloseIcon: durationSec > 2 ? true : false,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// validator functions

String? validateRequiredField(String? value, String message) {
  if (value == null || value.isEmpty) {
    return message;
  } else {
    return null;
  }
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email не должен быть пустым';
  } else if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return 'Введите корректный email';
  } else {
    return null;
  }
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Пароль не должен быть пустым';
  } else if (value.length < 6) {
    return 'Пароль должен быть не меньше 6 символов';
  } else {
    return null;
  }
}

// date functions

String getMonthYearTitle(DateTime dateTime) {
  var month = toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime));
  var monthYearTitle = '$month ${dateTime.year}';
  return monthYearTitle;
}

String getCapitalCaseMonth(int monthNumber) {
  var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
  String month =
      toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime))!;
  return month;
}

String getLowerCaseShortMonth(int monthNumber) {
  var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
  String month = DateFormat('MMM').format(dateTime);
  return month.substring(0, 3);
}

String getCapitalCaseShortMonth(int monthNumber) {
  var dateTime = DateTime(DateTime.now().year, monthNumber, 1);
  String month =
      toBeginningOfSentenceCase(DateFormat('MMMM').format(dateTime))!;
  return month.substring(0, 3);
}

// math

double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

double truncateDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).truncate().toDouble() / mod);
}
