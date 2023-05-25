import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/data/services/record_service/record_service.dart';

@Environment("prod")
@LazySingleton(as: RecordService)
class RecordServiceApi implements RecordService {
  @override
  Future<List<Record>> getAll() async {
    List<Record> records = [];
    final collection =
        await FirebaseFirestore.instance.collection('records').get();

    for (var doc in collection.docs) {
      final record = Record.fromJson(doc.data());
      records.add(record);
    }

    return records;
  }

  @override
  Future<List<Record>> getByCategoryId(String categoryId) async {
    List<Record> records = [];
    final collection =
        await FirebaseFirestore.instance.collection('records').get();

    for (var doc in collection.docs) {
      final record = Record.fromJson(doc.data());
      if (record.categoryId == categoryId) {
        records.add(record);
      }
    }

    return records;
  }

  @override
  Future<String> add(Record record) async {
    final doc = FirebaseFirestore.instance.collection('records').doc();
    final recordWithId = record.copyWith(id: doc.id);
    await doc.set(recordWithId.toJson());
    return doc.id;
  }

  @override
  Future<void> update(Record record) async {
    final doc = FirebaseFirestore.instance.collection('records').doc(record.id);
    final json = record.toJson();
    await doc.update(json);
  }

  @override
  Future<void> delete(String id) async {
    final doc = FirebaseFirestore.instance.collection('records').doc(id);
    await doc.delete();
  }

  @override
  Future<void> deleteByCategoryId(String categoryId) async {
    final collection =
        await FirebaseFirestore.instance.collection('records').get();

    for (var doc in collection.docs) {
      final record = Record.fromJson(doc.data());
      if (record.categoryId == categoryId) {
        doc.reference.delete();
      }
    }
  }
}
