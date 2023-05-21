import 'package:money_tracker/data/models/record/record.dart';

abstract class RecordService {
  Future<List<Record>> getAll();
  Future<List<Record>> getByCategoryId(String categoryId);
  Future<void> add(Record record);
  Future<void> update(Record record);
  Future<void> delete(String id);
  Future<void> deleteByCategoryId(String categoryId);
}
