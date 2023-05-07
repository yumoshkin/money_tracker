part of 'expense_cubit.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.initial({
    required DateTime currentDate,
    required String monthYearTitle,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateInitial;
  const factory ExpenseState.loading({
    required DateTime currentDate,
    required String monthYearTitle,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateLoading;
  const factory ExpenseState.loaded({
    required DateTime currentDate,
    required String monthYearTitle,
    required List<Expense> expenses,
    @Default('') String message,
    @Default('') String error,
  }) = ExpenseStateLoaded;
  const factory ExpenseState.error({
    required DateTime currentDate,
    required String monthYearTitle,
    @Default([]) List<Expense> expenses,
    @Default('') String message,
    required String error,
  }) = ExpenseStateError;
}
