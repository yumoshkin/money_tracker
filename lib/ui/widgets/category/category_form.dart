import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/ui/utils/extentions.dart';
import 'package:money_tracker/ui/utils/functions.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_color.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_text.dart';

class CategoryForm extends StatefulWidget {
  const CategoryForm({Key? key, this.category}) : super(key: key);
  final Category? category;

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _colorController = TextEditingController();
  bool _isProcessing = false;
  Color? _color;
  Color? _pickerColor;

  @override
  void initState() {
    if (widget.category != null) {
      _nameController.text = widget.category!.name;
      _colorController.text = widget.category!.color;
      _color = _colorController.text.toColor();
      _pickerColor = _color;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _colorController.dispose();
    super.dispose();
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isProcessing = true;
    });

    if (widget.category == null) {
      await context.read<CategoryCubit>().addCategory(
            Category(
              id: '',
              userId: context.read<AuthCubit>().state.user!.uid,
              name: _nameController.text.trim(),
              color: _colorController.text,
            ),
          );
    } else {
      await context.read<CategoryCubit>().updateCategory(
            widget.category!.copyWith(
              name: _nameController.text,
              color: _colorController.text,
            ),
          );
    }

    if (mounted) {
      Navigator.of(context).pop();
    }
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
            Text(
              widget.category != null
                  ? 'Изменить категорию'
                  : 'Добавить категорию',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            FormFieldText(
              controller: _nameController,
              labelText: 'Название',
              isAutovalidate: true,
              validator: (value) => validateRequiredField(
                  value, 'Название не должно быть пустым'),
            ),
            Stack(
              children: [
                FormFieldColor(
                  controller: _colorController,
                  labelText: 'Цвет',
                  isAutovalidate: true,
                  validator: (value) => validateRequiredField(
                      value, 'Цвет не должен быть пустым'),
                  onTap: () => _pickColor(context),
                ),
                if (_color != null)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () => _pickColor(context),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _color,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: !_isProcessing ? () => _submit() : null,
              child: !_isProcessing
                  ? Text(
                      widget.category != null ? 'Изменить' : 'Добавить',
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

  void _pickColor(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Align(
          alignment: Alignment.center,
          child: Text('Выбрать цвет'),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 380,
                child: MaterialPicker(
                  pickerColor: _pickerColor ?? const Color(0xffef5350),
                  onColorChanged: (Color color) {
                    setState(() => _pickerColor = color);
                  },
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text(
                  'Выбрать',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  String colorText = _pickerColor.toString().substring(10, 16);
                  setState(() {
                    _color = _pickerColor;
                    _colorController.text = colorText;
                  });
                  Navigator.of(context).pop();
                },
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
      ),
    );
  }
}
