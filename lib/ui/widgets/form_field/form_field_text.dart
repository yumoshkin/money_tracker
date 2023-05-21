import 'package:flutter/material.dart';

class FormFieldText extends StatelessWidget {
  const FormFieldText({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.isAutovalidate,
    required this.validator,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final bool isAutovalidate;
  final String? Function(String? message) validator;

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
      keyboardType: TextInputType.text,
      validator: validator,
    );
  }
}
