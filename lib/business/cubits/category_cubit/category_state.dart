part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading({
    @Default([]) List<Category> categories,
    @Default('') String error,
  }) = CategoryStateLoading;
  const factory CategoryState.loaded({
    required List<Category> categories,
    @Default('') String error,
  }) = CategoryStateLoaded;
  const factory CategoryState.empty({
    @Default([]) List<Category> categories,
    @Default('') String error,
  }) = CategoryStateEmpty;
  const factory CategoryState.error({
    @Default([]) List<Category> categories,
    required String error,
  }) = CategoryStateError;
}
