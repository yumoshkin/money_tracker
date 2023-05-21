import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/data/services/category_service/category_service.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.categoryService})
      : super(const CategoryState.empty());
  final CategoryService categoryService;

  Future<void> loadCategoriesByUserId(String userId) async {
    try {
      emit(const CategoryState.loading());

      final List<Category> categories =
          await categoryService.getByUserId(userId);

      if (categories.isNotEmpty) {
        emit(CategoryState.loaded(categories: categories));
      } else {
        emit(const CategoryState.empty());
      }
    } catch (e) {
      emit(CategoryState.error(error: e.toString()));
    }
  }

  Future<void> addCategory(Category category) async {
    try {
      emit(const CategoryState.loading());

      await categoryService.add(category);
      final List<Category> categories =
          await categoryService.getByUserId(category.userId);

      if (categories.isNotEmpty) {
        emit(CategoryState.loaded(categories: categories));
      } else {
        emit(const CategoryState.empty());
      }
    } catch (e) {
      emit(CategoryState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> updateCategory(Category category) async {
    try {
      emit(const CategoryState.loading());

      await categoryService.update(category);
      final List<Category> categories =
          await categoryService.getByUserId(category.userId);

      if (categories.isNotEmpty) {
        emit(CategoryState.loaded(categories: categories));
      } else {
        emit(const CategoryState.empty());
      }
    } catch (e) {
      emit(CategoryState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> deleteCategory(Category category) async {
    try {
      emit(const CategoryState.loading());

      await categoryService.delete(category.id);
      final List<Category> categories =
          await categoryService.getByUserId(category.userId);

      if (categories.isNotEmpty) {
        emit(CategoryState.loaded(categories: categories));
      } else {
        emit(const CategoryState.empty());
      }
    } catch (e) {
      emit(CategoryState.error(error: e.toString()));
    }
  }
}
