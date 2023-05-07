// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateInitialCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateInitialCopyWith(
          _$AuthStateInitial value, $Res Function(_$AuthStateInitial) then) =
      __$$AuthStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitial>
    implements _$$AuthStateInitialCopyWith<$Res> {
  __$$AuthStateInitialCopyWithImpl(
      _$AuthStateInitial _value, $Res Function(_$AuthStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateInitial(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateInitial implements AuthStateInitial {
  const _$AuthStateInitial({this.user, this.message = '', this.error = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState.initial(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateInitial &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateInitialCopyWith<_$AuthStateInitial> get copyWith =>
      __$$AuthStateInitialCopyWithImpl<_$AuthStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return initial(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return initial?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial(
      {final User? user,
      final String message,
      final String error}) = _$AuthStateInitial;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateInitialCopyWith<_$AuthStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateSuccessCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateSuccessCopyWith(
          _$AuthStateSuccess value, $Res Function(_$AuthStateSuccess) then) =
      __$$AuthStateSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSuccess>
    implements _$$AuthStateSuccessCopyWith<$Res> {
  __$$AuthStateSuccessCopyWithImpl(
      _$AuthStateSuccess _value, $Res Function(_$AuthStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateSuccess(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateSuccess implements AuthStateSuccess {
  const _$AuthStateSuccess({this.user, this.message = '', this.error = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState.success(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSuccess &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSuccessCopyWith<_$AuthStateSuccess> get copyWith =>
      __$$AuthStateSuccessCopyWithImpl<_$AuthStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return success(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return success?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess(
      {final User? user,
      final String message,
      final String error}) = _$AuthStateSuccess;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateSuccessCopyWith<_$AuthStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateErrorCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateErrorCopyWith(
          _$AuthStateError value, $Res Function(_$AuthStateError) then) =
      __$$AuthStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateError>
    implements _$$AuthStateErrorCopyWith<$Res> {
  __$$AuthStateErrorCopyWithImpl(
      _$AuthStateError _value, $Res Function(_$AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateError(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError({this.user, this.message = '', required this.error});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateError &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      __$$AuthStateErrorCopyWithImpl<_$AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return error(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return error?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(
      {final User? user,
      final String message,
      required final String error}) = _$AuthStateError;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateSendEmailVerificationCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateSendEmailVerificationCopyWith(
          _$AuthStateSendEmailVerification value,
          $Res Function(_$AuthStateSendEmailVerification) then) =
      __$$AuthStateSendEmailVerificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateSendEmailVerificationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSendEmailVerification>
    implements _$$AuthStateSendEmailVerificationCopyWith<$Res> {
  __$$AuthStateSendEmailVerificationCopyWithImpl(
      _$AuthStateSendEmailVerification _value,
      $Res Function(_$AuthStateSendEmailVerification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateSendEmailVerification(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateSendEmailVerification
    implements AuthStateSendEmailVerification {
  const _$AuthStateSendEmailVerification(
      {this.user, this.message = '', this.error = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState.sendEmailVerification(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSendEmailVerification &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSendEmailVerificationCopyWith<_$AuthStateSendEmailVerification>
      get copyWith => __$$AuthStateSendEmailVerificationCopyWithImpl<
          _$AuthStateSendEmailVerification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return sendEmailVerification(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return sendEmailVerification?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return sendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return sendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class AuthStateSendEmailVerification implements AuthState {
  const factory AuthStateSendEmailVerification(
      {final User? user,
      final String message,
      final String error}) = _$AuthStateSendEmailVerification;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateSendEmailVerificationCopyWith<_$AuthStateSendEmailVerification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateResetPasswordCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateResetPasswordCopyWith(_$AuthStateResetPassword value,
          $Res Function(_$AuthStateResetPassword) then) =
      __$$AuthStateResetPasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateResetPasswordCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateResetPassword>
    implements _$$AuthStateResetPasswordCopyWith<$Res> {
  __$$AuthStateResetPasswordCopyWithImpl(_$AuthStateResetPassword _value,
      $Res Function(_$AuthStateResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateResetPassword(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateResetPassword implements AuthStateResetPassword {
  const _$AuthStateResetPassword(
      {this.user, this.message = '', this.error = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState.resetPassword(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateResetPassword &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateResetPasswordCopyWith<_$AuthStateResetPassword> get copyWith =>
      __$$AuthStateResetPasswordCopyWithImpl<_$AuthStateResetPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return resetPassword(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return resetPassword?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class AuthStateResetPassword implements AuthState {
  const factory AuthStateResetPassword(
      {final User? user,
      final String message,
      final String error}) = _$AuthStateResetPassword;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateResetPasswordCopyWith<_$AuthStateResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateDisconnectCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateDisconnectCopyWith(_$AuthStateDisconnect value,
          $Res Function(_$AuthStateDisconnect) then) =
      __$$AuthStateDisconnectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String message, String error});
}

/// @nodoc
class __$$AuthStateDisconnectCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateDisconnect>
    implements _$$AuthStateDisconnectCopyWith<$Res> {
  __$$AuthStateDisconnectCopyWithImpl(
      _$AuthStateDisconnect _value, $Res Function(_$AuthStateDisconnect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateDisconnect(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateDisconnect implements AuthStateDisconnect {
  const _$AuthStateDisconnect({this.user, this.message = '', this.error = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState.disconnect(user: $user, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateDisconnect &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateDisconnectCopyWith<_$AuthStateDisconnect> get copyWith =>
      __$$AuthStateDisconnectCopyWithImpl<_$AuthStateDisconnect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String message, String error) initial,
    required TResult Function(User? user, String message, String error) success,
    required TResult Function(User? user, String message, String error) error,
    required TResult Function(User? user, String message, String error)
        sendEmailVerification,
    required TResult Function(User? user, String message, String error)
        resetPassword,
    required TResult Function(User? user, String message, String error)
        disconnect,
  }) {
    return disconnect(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String message, String error)? initial,
    TResult? Function(User? user, String message, String error)? success,
    TResult? Function(User? user, String message, String error)? error,
    TResult? Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult? Function(User? user, String message, String error)? resetPassword,
    TResult? Function(User? user, String message, String error)? disconnect,
  }) {
    return disconnect?.call(user, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String message, String error)? initial,
    TResult Function(User? user, String message, String error)? success,
    TResult Function(User? user, String message, String error)? error,
    TResult Function(User? user, String message, String error)?
        sendEmailVerification,
    TResult Function(User? user, String message, String error)? resetPassword,
    TResult Function(User? user, String message, String error)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(user, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(AuthStateResetPassword value) resetPassword,
    required TResult Function(AuthStateDisconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(AuthStateResetPassword value)? resetPassword,
    TResult? Function(AuthStateDisconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(AuthStateResetPassword value)? resetPassword,
    TResult Function(AuthStateDisconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class AuthStateDisconnect implements AuthState {
  const factory AuthStateDisconnect(
      {final User? user,
      final String message,
      final String error}) = _$AuthStateDisconnect;

  @override
  User? get user;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateDisconnectCopyWith<_$AuthStateDisconnect> get copyWith =>
      throw _privateConstructorUsedError;
}
