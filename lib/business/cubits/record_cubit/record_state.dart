part of 'record_cubit.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState.initial({
    @Default([]) List<Record> records,
    @Default('') String message,
    @Default('') String error,
  }) = RecordStateInitial;
  const factory RecordState.loading({
    @Default([]) List<Record> records,
    @Default('') String message,
    @Default('') String error,
  }) = RecordStateLoading;
  const factory RecordState.loaded({
    required List<Record> records,
    @Default('') String message,
    @Default('') String error,
  }) = RecordStateLoaded;
  const factory RecordState.error({
    @Default([]) List<Record> records,
    @Default('') String message,
    required String error,
  }) = RecordStateError;
}
