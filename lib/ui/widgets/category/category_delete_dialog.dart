import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart';
import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/ui/theme/theme.dart';

class CategoryDeleteDialog extends StatefulWidget {
  const CategoryDeleteDialog({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  @override
  State<CategoryDeleteDialog> createState() => _CategoryDeleteDialogState();
}

class _CategoryDeleteDialogState extends State<CategoryDeleteDialog> {
  bool _isProcessing = false;

  void _submit() async {
    setState(() {
      _isProcessing = true;
    });

    await context
        .read<RecordCubit>()
        .deleteRecordsByCategoryId(widget.category.id);
    _deleteCategory(widget.category);

    _pop();
  }

  void _deleteCategory(Category category) async {
    await context.read<CategoryCubit>().deleteCategory(category);
  }

  void _pop() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryCubit, CategoryState>(
      listener: (context, state) {
        // if (state.message.isNotEmpty) {
        //   showSnackBarSuccess(context, state.message);
        // } else if (state.error.isNotEmpty) {
        //   showSnackBarError(context, state.error);
        // }
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
                    text: 'Удалить категорию ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${widget.category.name}?',
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
