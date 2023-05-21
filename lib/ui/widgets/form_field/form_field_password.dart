import 'package:flutter/material.dart';

import 'package:money_tracker/ui/utils/functions.dart';

class FormFieldPassword extends StatelessWidget {
  const FormFieldPassword(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.isAutovalidate,
      required this.isPasswordObscure,
      required this.togglePasswordVisibility})
      : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final bool isAutovalidate;
  final bool isPasswordObscure;
  final Function() togglePasswordVisibility;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        alignLabelWithHint: true,
        suffixIcon: IconButton(
          padding: const EdgeInsets.only(top: 20),
          icon:
              Icon(isPasswordObscure ? Icons.visibility : Icons.visibility_off),
          onPressed: togglePasswordVisibility,
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: isPasswordObscure,
      autovalidateMode: isAutovalidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: validatePassword,
    );
  }
}
