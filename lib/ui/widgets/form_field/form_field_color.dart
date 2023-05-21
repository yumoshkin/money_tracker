import 'package:flutter/material.dart';

class FormFieldColor extends StatelessWidget {
  const FormFieldColor({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.isAutovalidate,
    required this.validator,
    required this.onTap,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final bool isAutovalidate;
  final String? Function(String? message) validator;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
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
      onTap: onTap,
    );
  }
}
