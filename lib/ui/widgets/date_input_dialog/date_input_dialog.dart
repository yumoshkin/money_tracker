import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:money_tracker/ui/widgets/date_input_dialog/date_input_dialog_footer.dart';
import 'package:money_tracker/ui/widgets/date_input_dialog/date_input_dialog_header.dart';

class DateInputDialog extends StatefulWidget {
  const DateInputDialog({super.key, required this.date});
  final DateTime date;

  @override
  State<DateInputDialog> createState() => _DateInputDialogState();
}

class _DateInputDialogState extends State<DateInputDialog> {
  final _formKey = GlobalKey<FormState>();
  final _dateController = TextEditingController();
  late MaskTextInputFormatter _maskFormatter;

  @override
  void initState() {
    _dateController.text = DateFormat('dd/MM/yy').format(widget.date);
    _maskFormatter = MaskTextInputFormatter(
      mask: '##/##/##',
      initialText: _dateController.text,
    );
    super.initState();
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  void _setDate(DateTime date) {
    setState(() {
      _dateController.text = DateFormat('dd/MM/yy').format(date);
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final newDate = DateFormat('dd/MM/yy').parse(_dateController.text);
    Navigator.of(context).pop(newDate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DateInputDialogHeader(date: widget.date, setDate: _setDate),
        const SizedBox(height: 15),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _dateController,
              decoration: const InputDecoration(
                labelText: 'Дата',
                isDense: true,
                alignLabelWithHint: true,
              ),
              autocorrect: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              inputFormatters: [_maskFormatter],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Дата не должна быть пустой';
                }

                final components = value.split("/");
                if (components.length == 3) {
                  final day = int.tryParse(components[0]);
                  final month = int.tryParse(components[1]);
                  final year = int.tryParse(components[2]);
                  if (day != null && month != null && year != null) {
                    final date = DateTime(year, month, day);
                    if (date.year == year &&
                        date.month == month &&
                        date.day == day) {
                      return null;
                    }
                  }
                }

                return 'Неправильная дата';
              },
            ),
          ),
        ),
        const SizedBox(height: 5),
        DateInputDialogFooter(submit: _submit),
      ],
    );
  }
}
