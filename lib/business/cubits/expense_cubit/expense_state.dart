part of 'expense_cubit.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.loading({
    required int year,
    required int month,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateLoading;
  const factory ExpenseState.loaded({
    required int year,
    required int month,
    required List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateLoaded;
  const factory ExpenseState.empty({
    required int year,
    required int month,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateEmpty;
  const factory ExpenseState.error({
    required int year,
    required int month,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    required String error,
  }) = ExpenseStateError;
}
