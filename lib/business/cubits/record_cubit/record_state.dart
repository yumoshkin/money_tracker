part of 'record_cubit.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState.loading({
    @Default([]) List<Record> records,
    @Default('') String error,
  }) = RecordStateLoading;
  const factory RecordState.loaded({
    required List<Record> records,
    @Default('') String error,
  }) = RecordStateLoaded;
  const factory RecordState.empty({
    @Default([]) List<Record> records,
    @Default('') String error,
  }) = RecordStateEmpty;
  const factory RecordState.error({
    @Default([]) List<Record> records,
    required String error,
  }) = RecordStateError;
}
