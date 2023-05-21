import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/ui/utils/extentions.dart';
import 'package:money_tracker/ui/widgets/record/record_delete_dialog.dart';
import 'package:money_tracker/ui/widgets/record/record_form.dart';

enum Operation { edit, delete }

class RecordList extends StatefulWidget {
  const RecordList({
    Key? key,
    required this.expense,
    required this.showCategories,
  }) : super(key: key);
  final Expense expense;
  final Function() showCategories;

  @override
  State<RecordList> createState() => _RecordListState();
}

class _RecordListState extends State<RecordList> {
  Offset? _tapPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: widget.expense.category.color.toColor(),
        ),
        backgroundColor: widget.expense.category.color.toColor(),
        title: Text(widget.expense.category.name),
        centerTitle: true,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 32),
          onPressed: widget.showCategories,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                  insetPadding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RecordForm(categoryId: widget.expense.category.id),
                ),
              ),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTapDown: (details) => _getTapPosition(details),
        child: widget.expense.records.isEmpty
            ? const Center(
                child: Text(
                  'Нет расходов',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: widget.expense.records.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      dense: true,
                      contentPadding: const EdgeInsets.only(left: 25),
                      title: Text(
                        widget.expense.records[index].cost.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat('dd MMMM yyyy / HH:mm')
                            .format(widget.expense.records[index].createdAt),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onLongPress: () => _showPopupMenu(
                          context, widget.expense.records[index]),
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  _getTapPosition(TapDownDetails details) async {
    final tapPosition = details.globalPosition;
    setState(() {
      _tapPosition = tapPosition;
    });
  }

  _showPopupMenu(BuildContext context, Record record) async {
    double left = MediaQuery.of(context).size.width - 202;
    double top = _tapPosition!.dy - 150;

    await showMenu(
      context: context,
      constraints: const BoxConstraints(
        maxWidth: 190,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      position: RelativeRect.fromDirectional(
        textDirection: Directionality.of(context),
        start: left,
        top: top,
        end: left + 190,
        bottom: top + 100,
      ),
      items: [
        const PopupMenuItem(
          value: Operation.edit,
          child: Text('Изменить расход'),
        ),
        const PopupMenuItem(
          value: Operation.delete,
          child: Text(
            'Удалить расход',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
      elevation: 8,
    ).then(
      (value) {
        // final records = widget.expense.records;

        if (value == Operation.edit) {
          showDialog(
            context: context,
            builder: (BuildContext context) => Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 25),
              child: RecordForm(
                  categoryId: widget.expense.category.id, record: record),
            ),
          );
        }

        if (value == Operation.delete) {
          showDialog(
            context: context,
            builder: (BuildContext context) => Dialog(
              child: RecordDeleteDialog(record: record),
            ),
          );
        }
      },
    );
  }
}
