import 'package:flutter/material.dart';

class DateInputDialogFooter extends StatelessWidget {
  const DateInputDialogFooter({
    Key? key,
    required this.submit,
  }) : super(key: key);
  final Function() submit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: submit,
            child: const Text('Подтвердить'),
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
    );
  }
}
