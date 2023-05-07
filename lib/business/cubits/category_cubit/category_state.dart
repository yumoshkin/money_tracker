part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial({
    @Default([]) List<Category> categories,
    @Default('') String message,
    @Default('') String error,
  }) = CategoryStateInitial;
  const factory CategoryState.loading({
    @Default([]) List<Category> categories,
    @Default('') String message,
    @Default('') String error,
  }) = CategoryStateLoading;
  const factory CategoryState.loaded({
    required List<Category> categories,
    @Default('') String message,
    @Default('') String error,
  }) = CategoryStateLoaded;
  const factory CategoryState.error({
    @Default([]) List<Category> categories,
    @Default('') String message,
    required String error,
  }) = CategoryStateError;
}
