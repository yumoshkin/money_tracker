import 'package:injectable/injectable.dart';

import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/data/services/category_service/category_service.dart';

List<Category> categories = [
  const Category(
      id: '1',
      userId: 'k4P3A6vG5IVCdYARD0dfA9t0Zvv2',
      name: 'Дом',
      color: 'red'),
  const Category(
      id: '2',
      userId: 'k4P3A6vG5IVCdYARD0dfA9t0Zvv2',
      name: 'Машина',
      color: 'blue'),
  const Category(
      id: '3',
      userId: 'k4P3A6vG5IVCdYARD0dfA9t0Zvv2',
      name: 'Кот',
      color: 'yellow'),
  const Category(id: '4', userId: '2', name: 'Категория_4', color: 'cyan'),
];

@Environment("dev")
@LazySingleton(as: CategoryService)
class CategoryServiceMock implements CategoryService {
  @override
  Future<List<Category>> getByUserId(String userId) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return categories.where((element) => element.userId == userId).toList();
  }

  @override
  Future<void> add(Category category) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!checkUniqueness(category)) {
      throw Exception('Категория "${category.name}" уже существует');
    }

    categories.add(category.copyWith(id: getNextId()));
  }

  @override
  Future<void> update(Category category) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = categories.indexWhere((element) => element.id == category.id);

    if (!checkUniqueness(category)) {
      throw Exception('Категория "${category.name}" уже существует');
    }

    categories[index] = categories[index].copyWith(
      id: category.id,
      name: category.name,
    );
  }

  @override
  Future<void> delete(String id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = categories.indexWhere((element) => element.id == id);
    categories.removeAt(index);
  }

  String getNextId() {
    if (categories.isNotEmpty) {
      final tmpCategories = [...categories];
      tmpCategories.sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
      return (int.parse(tmpCategories.last.id) + 1).toString();
    } else {
      return '1';
    }
  }

  bool checkUniqueness(Category category) {
    var index = -1;
    if (category.id == '') {
      index = categories.indexWhere((element) => element.name == category.name);
    } else {
      index = categories.indexWhere((element) =>
          element.name == category.name && element.id != category.id);
    }
    return index == -1 ? true : false;
  }
}
