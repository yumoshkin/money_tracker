// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Record _$$_RecordFromJson(Map<String, dynamic> json) => _$_Record(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      cost: (json['cost'] as num).toDouble(),
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_RecordToJson(_$_Record instance) => <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'cost': instance.cost,
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
    };
