import 'package:flutter/material.dart';

import 'package:money_tracker/ui/utils/functions.dart';

class FormFieldEmail extends StatelessWidget {
  const FormFieldEmail({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.isAutovalidate,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final bool isAutovalidate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        alignLabelWithHint: true,
      ),
      autovalidateMode: isAutovalidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
    );
  }
}
