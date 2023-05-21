import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart';
import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/ui/utils/functions.dart';
import 'package:money_tracker/ui/widgets/date_input_dialog/date_input_dialog.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_number.dart';

class RecordForm extends StatefulWidget {
  const RecordForm({
    Key? key,
    required this.categoryId,
    this.record,
  }) : super(key: key);
  final String categoryId;
  final Record? record;

  @override
  State<RecordForm> createState() => _RecordFormState();
}

class _RecordFormState extends State<RecordForm> {
  final _formKey = GlobalKey<FormState>();
  final _costController = TextEditingController();
  DateTime _date = DateTime.now();
  bool _isProcessing = false;

  @override
  void initState() {
    if (widget.record != null) {
      _costController.text = widget.record!.cost.toString();
      _date = widget.record!.createdAt;
    }
    super.initState();
  }

  @override
  void dispose() {
    _costController.dispose();
    super.dispose();
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isProcessing = true;
    });

    if (widget.record == null) {
      await context.read<RecordCubit>().addRecord(
            Record(
              id: '',
              categoryId: widget.categoryId,
              cost: double.parse(_costController.text),
              createdAt: _date,
            ),
          );
    } else {
      await context.read<RecordCubit>().updateRecord(
            widget.record!.copyWith(
              cost: double.parse(_costController.text),
              createdAt: _date,
            ),
          );
    }

    _pop();
  }

  void _pop() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.record != null ? 'Изменить расход' : 'Добавить расход',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: TextButton(
                    onPressed: () async {
                      var newDate = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            insetPadding:
                                const EdgeInsets.symmetric(horizontal: 25),
                            child: DateInputDialog(date: _date),
                          );
                        },
                      );

                      if (newDate == null) {
                        return;
                      }

                      setState(() {
                        _date = newDate;
                      });
                    },
                    child: Text(
                      '${_date.day} ${getLowerCaseShortMonth(_date.month)} ${_date.year}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: FormFieldNumber(
                controller: _costController,
                labelText: 'Введите сумму',
                isAutovalidate: true,
                validator: (value) =>
                    validateRequiredField(value, 'Сумма не должна быть пустой'),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: !_isProcessing ? () => _submit() : null,
              child: !_isProcessing
                  ? Text(
                      widget.record != null ? 'Изменить' : 'Добавить',
                    )
                  : const CircularProgressIndicator(),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Отмена',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
