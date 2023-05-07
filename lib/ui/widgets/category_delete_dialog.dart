import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/data/models/category/category.dart';

class CategoryDeleteDialog extends StatelessWidget {
  final Category category;
  const CategoryDeleteDialog({Key? key, required this.category})
      : super(key: key);

  void delete(BuildContext context, [bool mounted = true]) async {
    await context.read<CategoryCubit>().deleteCategory(category);
    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Подтверждение'),
      content: Text(
        'Удалить категорию "${category.name}"?',
        style: const TextStyle(fontSize: 18),
      ),
      actionsPadding: const EdgeInsets.only(bottom: 16, right: 16),
      actions: [
        TextButton(
          child: const Text(
            'Удалить',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () => delete(context),
        ),
        TextButton(
          child: const Text(
            'Отменить',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
