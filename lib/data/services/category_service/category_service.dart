import 'package:money_tracker/data/models/category/category.dart';

abstract class CategoryService {
  Future<List<Category>> getByUserId(String userId);
  Future<void> add(Category category);
  Future<void> update(Category category);
  Future<void> delete(String id);
}
