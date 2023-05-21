import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldNumber extends StatelessWidget {
  const FormFieldNumber({
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d?)')),
      ],
      autovalidateMode: isAutovalidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      keyboardType: TextInputType.number,
      validator: validator,
    );
  }
}
