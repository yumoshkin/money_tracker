import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/data/services/category_service/category_service.dart';

@Environment("prod")
@LazySingleton(as: CategoryService)
class CategoryServiceApi implements CategoryService {
  @override
  Future<List<Category>> getByUserId(String userId) async {
    List<Category> categories = [];
    final collection =
        await FirebaseFirestore.instance.collection('categories').get();

    for (var doc in collection.docs) {
      final category = Category.fromJson(doc.data());
      if (category.userId == userId) {
        categories.add(category);
      }
    }

    return categories;
  }

  @override
  Future<String> add(Category category) async {
    final doc = FirebaseFirestore.instance.collection('categories').doc();
    final categoryWithId = category.copyWith(id: doc.id);
    await doc.set(categoryWithId.toJson());
    return doc.id;
  }

  @override
  Future<void> update(Category category) async {
    final doc =
        FirebaseFirestore.instance.collection('categories').doc(category.id);
    final json = category.toJson();
    await doc.update(json);
  }

  @override
  Future<void> delete(String id) async {
    final doc = FirebaseFirestore.instance.collection('categories').doc(id);
    await doc.delete();
  }

  bool checkUniqueness(Category category, List<Category> categories) {
    var index = -1;
    if (category.id == '') {
      index = categories.indexWhere((element) => element.name == category.name);
    } else {
      index = categories.toList().indexWhere((element) =>
          element.name == category.name && element.id != category.id);
    }

    return index == -1 ? true : false;
  }
}
