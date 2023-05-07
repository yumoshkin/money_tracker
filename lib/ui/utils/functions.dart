import 'package:flutter/material.dart';

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
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
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
