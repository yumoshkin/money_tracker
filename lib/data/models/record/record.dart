import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:money_tracker/data/models/record/timestamp_serializer.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    required String id,
    required String categoryId,
    required double cost,
    @TimestampSerializer() required DateTime createdAt,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}
