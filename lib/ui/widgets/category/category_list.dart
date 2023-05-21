import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/data/models/expense/expense.dart';
import 'package:money_tracker/ui/utils/extentions.dart';
import 'package:money_tracker/ui/widgets/category/category_delete_dialog.dart';
import 'package:money_tracker/ui/widgets/category/category_form.dart';
import 'package:money_tracker/ui/widgets/record/record_form.dart';

enum Operation { edit, delete }

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
    required this.expenses,
    required this.showCategoryRecords,
  }) : super(key: key);
  final List<Expense> expenses;
  final Function(int categoryIndex) showCategoryRecords;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  Offset? _tapPosition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _getTapPosition(details),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView.builder(
          itemCount: widget.expenses.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              dense: true,
              contentPadding: const EdgeInsets.only(left: 25),
              title: Text(
                widget.expenses[index].category.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                widget.expenses[index].sum > 0
                    ? 'Всего: ${widget.expenses[index].sum}'
                    : 'Добавить расход',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: IconButton(
                padding: const EdgeInsets.only(right: 10),
                color: widget.expenses[index].category.color.toColor(),
                onPressed: () => widget.showCategoryRecords(index),
                icon: const Icon(Icons.arrow_forward_ios),
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                  insetPadding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RecordForm(
                    categoryId: widget.expenses[index].category.id,
                    record: null,
                  ),
                ),
              ),
              onLongPress: () =>
                  _showPopupMenu(context, widget.expenses[index]),
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

  _showPopupMenu(BuildContext context, Expense expense) async {
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
          child: Text('Изменить категорию'),
        ),
        const PopupMenuItem(
          value: Operation.delete,
          child: Text(
            'Удалить категорию',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
      elevation: 8,
    ).then(
      (value) {
        final categories = context.read<CategoryCubit>().state.categories;

        if (value == Operation.edit) {
          showDialog(
            context: context,
            builder: (BuildContext context) => Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 25),
              child: CategoryForm(category: categories[expense.index]),
            ),
          );
        }

        if (value == Operation.delete) {
          showDialog(
            context: context,
            builder: (BuildContext context) => Dialog(
              child: CategoryDeleteDialog(category: categories[expense.index]),
            ),
          );
        }
      },
    );
  }
}
