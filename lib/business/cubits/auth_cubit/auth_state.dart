part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    User? user,
    @Default('') String message,
    @Default('') String error,
  }) = AuthStateInitial;
  const factory AuthState.success({
    User? user,
    @Default('') String message,
    @Default('') String error,
  }) = AuthStateSuccess;
  const factory AuthState.error({
    User? user,
    @Default('') String message,
    required String error,
  }) = AuthStateError;
  const factory AuthState.sendEmailVerification({
    User? user,
    @Default('') String message,
    @Default('') String error,
  }) = AuthStateSendEmailVerification;
  const factory AuthState.resetPassword({
    User? user,
    @Default('') String message,
    @Default('') String error,
  }) = AuthStateResetPassword;
  const factory AuthState.disconnect({
    User? user,
    @Default('') String message,
    @Default('') String error,
  }) = AuthStateDisconnect;
}
