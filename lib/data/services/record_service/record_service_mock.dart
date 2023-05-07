import 'package:injectable/injectable.dart';

import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/data/services/record_service/record_service.dart';

List<Record> records = [
  Record(
    id: '1',
    categoryId: '1',
    cost: 200.5,
    createdAt: DateTime(2023, 4, 15, 10, 30, 0),
  ),
  Record(
    id: '2',
    categoryId: '1',
    cost: 250.00,
    createdAt: DateTime(2023, 4, 15, 10, 35, 0),
  ),
  Record(
    id: '3',
    categoryId: '2',
    cost: 700.0,
    createdAt: DateTime(2023, 4, 20, 11, 30, 0),
  ),
  Record(
    id: '4',
    categoryId: '1',
    cost: 300.00,
    createdAt: DateTime(2023, 5, 15, 10, 30, 0),
  ),
  Record(
    id: '5',
    categoryId: '3',
    cost: 150.0,
    createdAt: DateTime(2023, 5, 15, 10, 35, 0),
  ),
  Record(
    id: '6',
    categoryId: '3',
    cost: 50.0,
    createdAt: DateTime(2023, 5, 20, 11, 30, 0),
  ),
];

@Environment("dev")
@LazySingleton(as: RecordService)
class RecordServiceMock implements RecordService {
  @override
  Future<List<Record>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return records;
  }

  @override
  Future<List<Record>> getByCategoryId(String categoryId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return records
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  @override
  Future<void> add(Record record) async {
    await Future.delayed(const Duration(milliseconds: 100));
    records.add(record.copyWith(id: getNextId()));
  }

  @override
  Future<void> update(Record record) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = records.indexWhere((element) => element.id == record.id);
    records[index] = records[index].copyWith(cost: record.cost);
  }

  @override
  Future<void> delete(String id) async {
    final index = records.indexWhere((element) => element.id == id);
    records.removeAt(index);
  }

  String getNextId() {
    if (records.isNotEmpty) {
      final recordsList = [...records];
      recordsList.sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
      return (int.parse(recordsList.last.id) + 1).toString();
    } else {
      return '1';
    }
  }
}
