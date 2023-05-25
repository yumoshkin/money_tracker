import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart';
import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/ui/theme/theme.dart';
import 'package:money_tracker/ui/utils/functions.dart';

class RecordDeleteDialog extends StatefulWidget {
  const RecordDeleteDialog({
    Key? key,
    required this.record,
  }) : super(key: key);
  final Record record;

  @override
  State<RecordDeleteDialog> createState() => _RecordDeleteDialogState();
}

class _RecordDeleteDialogState extends State<RecordDeleteDialog> {
  bool _isProcessing = false;

  void _submit() async {
    setState(() {
      _isProcessing = true;
    });

    await context.read<RecordCubit>().deleteRecord(widget.record);

    if (mounted) {
      Navigator.of(context).pop();
    }

    setState(() {
      _isProcessing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecordCubit, RecordState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                RichText(
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                    text: 'Удалить расход ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${widget.record.cost}?',
                        style: TextStyle(color: themeData.colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: !_isProcessing ? () => _submit() : null,
                  child: !_isProcessing
                      ? const Text('Подтвердить')
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
        ],
      ),
    );
  }
}
