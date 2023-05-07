import 'package:flutter/material.dart';

class MonthYearDialogFooter extends StatelessWidget {
  const MonthYearDialogFooter({
    Key? key,
    required this.setCurrentDate,
  }) : super(key: key);
  final Function() setCurrentDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: setCurrentDate,
            child: Text('Подтвердить'),
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
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
