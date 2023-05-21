import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:money_tracker/data/models/record/record.dart';
import 'package:money_tracker/data/services/record_service/record_service.dart';

part 'record_state.dart';
part 'record_cubit.freezed.dart';

@injectable
class RecordCubit extends Cubit<RecordState> {
  RecordCubit({required this.recordService}) : super(const RecordState.empty());
  final RecordService recordService;

  Future<void> loadRecords() async {
    try {
      emit(const RecordState.loading());

      List<Record> records = await recordService.getAll();

      if (records.isNotEmpty) {
        emit(RecordState.loaded(records: records));
      } else {
        emit(const RecordState.empty());
      }
    } catch (e) {
      emit(RecordState.error(error: e.toString()));
    }
  }

  Future<void> addRecord(Record record) async {
    try {
      emit(const RecordState.loading());

      await recordService.add(record);
      final List<Record> records = await recordService.getAll();

      if (records.isNotEmpty) {
        emit(RecordState.loaded(records: records));
      } else {
        emit(const RecordState.empty());
      }
    } catch (e) {
      emit(RecordState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> updateRecord(Record record) async {
    try {
      emit(const RecordState.loading());

      await recordService.update(record);
      final List<Record> records = await recordService.getAll();

      if (records.isNotEmpty) {
        emit(RecordState.loaded(records: records));
      } else {
        emit(const RecordState.empty());
      }
    } catch (e) {
      emit(RecordState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> deleteRecord(Record record) async {
    try {
      emit(const RecordState.loading());

      await recordService.delete(record.id);
      final List<Record> records = await recordService.getAll();

      if (records.isNotEmpty) {
        emit(RecordState.loaded(records: records));
      } else {
        emit(const RecordState.empty());
      }
    } catch (e) {
      emit(RecordState.error(error: e.toString()));
    }
  }

  Future<void> deleteRecordsByCategoryId(String categoryId) async {
    try {
      emit(const RecordState.loading());

      await recordService.deleteByCategoryId(categoryId);
      final List<Record> records = await recordService.getAll();

      if (records.isNotEmpty) {
        emit(RecordState.loaded(records: records));
      } else {
        emit(const RecordState.empty());
      }
    } catch (e) {
      emit(RecordState.error(error: e.toString()));
    }
  }
}
