// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordState {
  List<Record> get records => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Record> records, String message, String error)
        initial,
    required TResult Function(
            List<Record> records, String message, String error)
        loading,
    required TResult Function(
            List<Record> records, String message, String error)
        loaded,
    required TResult Function(
            List<Record> records, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Record> records, String message, String error)?
        initial,
    TResult? Function(List<Record> records, String message, String error)?
        loading,
    TResult? Function(List<Record> records, String message, String error)?
        loaded,
    TResult? Function(List<Record> records, String message, String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Record> records, String message, String error)?
        initial,
    TResult Function(List<Record> records, String message, String error)?
        loading,
    TResult Function(List<Record> records, String message, String error)?
        loaded,
    TResult Function(List<Record> records, String message, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordStateInitial value) initial,
    required TResult Function(RecordStateLoading value) loading,
    required TResult Function(RecordStateLoaded value) loaded,
    required TResult Function(RecordStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordStateInitial value)? initial,
    TResult? Function(RecordStateLoading value)? loading,
    TResult? Function(RecordStateLoaded value)? loaded,
    TResult? Function(RecordStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordStateInitial value)? initial,
    TResult Function(RecordStateLoading value)? loading,
    TResult Function(RecordStateLoaded value)? loaded,
    TResult Function(RecordStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordStateCopyWith<RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res, RecordState>;
  @useResult
  $Res call({List<Record> records, String message, String error});
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res, $Val extends RecordState>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
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
abstract class _$$RecordStateInitialCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateInitialCopyWith(_$RecordStateInitial value,
          $Res Function(_$RecordStateInitial) then) =
      __$$RecordStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records, String message, String error});
}

/// @nodoc
class __$$RecordStateInitialCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateInitial>
    implements _$$RecordStateInitialCopyWith<$Res> {
  __$$RecordStateInitialCopyWithImpl(
      _$RecordStateInitial _value, $Res Function(_$RecordStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$RecordStateInitial(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
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

class _$RecordStateInitial implements RecordStateInitial {
  const _$RecordStateInitial(
      {final List<Record> records = const [],
      this.message = '',
      this.error = ''})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'RecordState.initial(records: $records, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateInitial &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateInitialCopyWith<_$RecordStateInitial> get copyWith =>
      __$$RecordStateInitialCopyWithImpl<_$RecordStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Record> records, String message, String error)
        initial,
    required TResult Function(
            List<Record> records, String message, String error)
        loading,
    required TResult Function(
            List<Record> records, String message, String error)
        loaded,
    required TResult Function(
            List<Record> records, String message, String error)
        error,
  }) {
    return initial(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Record> records, String message, String error)?
        initial,
    TResult? Function(List<Record> records, String message, String error)?
        loading,
    TResult? Function(List<Record> records, String message, String error)?
        loaded,
    TResult? Function(List<Record> records, String message, String error)?
        error,
  }) {
    return initial?.call(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Record> records, String message, String error)?
        initial,
    TResult Function(List<Record> records, String message, String error)?
        loading,
    TResult Function(List<Record> records, String message, String error)?
        loaded,
    TResult Function(List<Record> records, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(records, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordStateInitial value) initial,
    required TResult Function(RecordStateLoading value) loading,
    required TResult Function(RecordStateLoaded value) loaded,
    required TResult Function(RecordStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordStateInitial value)? initial,
    TResult? Function(RecordStateLoading value)? loading,
    TResult? Function(RecordStateLoaded value)? loaded,
    TResult? Function(RecordStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordStateInitial value)? initial,
    TResult Function(RecordStateLoading value)? loading,
    TResult Function(RecordStateLoaded value)? loaded,
    TResult Function(RecordStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecordStateInitial implements RecordState {
  const factory RecordStateInitial(
      {final List<Record> records,
      final String message,
      final String error}) = _$RecordStateInitial;

  @override
  List<Record> get records;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$RecordStateInitialCopyWith<_$RecordStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordStateLoadingCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateLoadingCopyWith(_$RecordStateLoading value,
          $Res Function(_$RecordStateLoading) then) =
      __$$RecordStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records, String message, String error});
}

/// @nodoc
class __$$RecordStateLoadingCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateLoading>
    implements _$$RecordStateLoadingCopyWith<$Res> {
  __$$RecordStateLoadingCopyWithImpl(
      _$RecordStateLoading _value, $Res Function(_$RecordStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$RecordStateLoading(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
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

class _$RecordStateLoading implements RecordStateLoading {
  const _$RecordStateLoading(
      {final List<Record> records = const [],
      this.message = '',
      this.error = ''})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'RecordState.loading(records: $records, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateLoading &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateLoadingCopyWith<_$RecordStateLoading> get copyWith =>
      __$$RecordStateLoadingCopyWithImpl<_$RecordStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Record> records, String message, String error)
        initial,
    required TResult Function(
            List<Record> records, String message, String error)
        loading,
    required TResult Function(
            List<Record> records, String message, String error)
        loaded,
    required TResult Function(
            List<Record> records, String message, String error)
        error,
  }) {
    return loading(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Record> records, String message, String error)?
        initial,
    TResult? Function(List<Record> records, String message, String error)?
        loading,
    TResult? Function(List<Record> records, String message, String error)?
        loaded,
    TResult? Function(List<Record> records, String message, String error)?
        error,
  }) {
    return loading?.call(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Record> records, String message, String error)?
        initial,
    TResult Function(List<Record> records, String message, String error)?
        loading,
    TResult Function(List<Record> records, String message, String error)?
        loaded,
    TResult Function(List<Record> records, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(records, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordStateInitial value) initial,
    required TResult Function(RecordStateLoading value) loading,
    required TResult Function(RecordStateLoaded value) loaded,
    required TResult Function(RecordStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordStateInitial value)? initial,
    TResult? Function(RecordStateLoading value)? loading,
    TResult? Function(RecordStateLoaded value)? loaded,
    TResult? Function(RecordStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordStateInitial value)? initial,
    TResult Function(RecordStateLoading value)? loading,
    TResult Function(RecordStateLoaded value)? loaded,
    TResult Function(RecordStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecordStateLoading implements RecordState {
  const factory RecordStateLoading(
      {final List<Record> records,
      final String message,
      final String error}) = _$RecordStateLoading;

  @override
  List<Record> get records;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$RecordStateLoadingCopyWith<_$RecordStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordStateLoadedCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateLoadedCopyWith(
          _$RecordStateLoaded value, $Res Function(_$RecordStateLoaded) then) =
      __$$RecordStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records, String message, String error});
}

/// @nodoc
class __$$RecordStateLoadedCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateLoaded>
    implements _$$RecordStateLoadedCopyWith<$Res> {
  __$$RecordStateLoadedCopyWithImpl(
      _$RecordStateLoaded _value, $Res Function(_$RecordStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$RecordStateLoaded(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
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

class _$RecordStateLoaded implements RecordStateLoaded {
  const _$RecordStateLoaded(
      {required final List<Record> records, this.message = '', this.error = ''})
      : _records = records;

  final List<Record> _records;
  @override
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'RecordState.loaded(records: $records, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateLoaded &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateLoadedCopyWith<_$RecordStateLoaded> get copyWith =>
      __$$RecordStateLoadedCopyWithImpl<_$RecordStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Record> records, String message, String error)
        initial,
    required TResult Function(
            List<Record> records, String message, String error)
        loading,
    required TResult Function(
            List<Record> records, String message, String error)
        loaded,
    required TResult Function(
            List<Record> records, String message, String error)
        error,
  }) {
    return loaded(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Record> records, String message, String error)?
        initial,
    TResult? Function(List<Record> records, String message, String error)?
        loading,
    TResult? Function(List<Record> records, String message, String error)?
        loaded,
    TResult? Function(List<Record> records, String message, String error)?
        error,
  }) {
    return loaded?.call(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Record> records, String message, String error)?
        initial,
    TResult Function(List<Record> records, String message, String error)?
        loading,
    TResult Function(List<Record> records, String message, String error)?
        loaded,
    TResult Function(List<Record> records, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(records, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordStateInitial value) initial,
    required TResult Function(RecordStateLoading value) loading,
    required TResult Function(RecordStateLoaded value) loaded,
    required TResult Function(RecordStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordStateInitial value)? initial,
    TResult? Function(RecordStateLoading value)? loading,
    TResult? Function(RecordStateLoaded value)? loaded,
    TResult? Function(RecordStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordStateInitial value)? initial,
    TResult Function(RecordStateLoading value)? loading,
    TResult Function(RecordStateLoaded value)? loaded,
    TResult Function(RecordStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecordStateLoaded implements RecordState {
  const factory RecordStateLoaded(
      {required final List<Record> records,
      final String message,
      final String error}) = _$RecordStateLoaded;

  @override
  List<Record> get records;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$RecordStateLoadedCopyWith<_$RecordStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordStateErrorCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateErrorCopyWith(
          _$RecordStateError value, $Res Function(_$RecordStateError) then) =
      __$$RecordStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records, String message, String error});
}

/// @nodoc
class __$$RecordStateErrorCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateError>
    implements _$$RecordStateErrorCopyWith<$Res> {
  __$$RecordStateErrorCopyWithImpl(
      _$RecordStateError _value, $Res Function(_$RecordStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$RecordStateError(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
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

class _$RecordStateError implements RecordStateError {
  const _$RecordStateError(
      {final List<Record> records = const [],
      this.message = '',
      required this.error})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'RecordState.error(records: $records, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateError &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateErrorCopyWith<_$RecordStateError> get copyWith =>
      __$$RecordStateErrorCopyWithImpl<_$RecordStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Record> records, String message, String error)
        initial,
    required TResult Function(
            List<Record> records, String message, String error)
        loading,
    required TResult Function(
            List<Record> records, String message, String error)
        loaded,
    required TResult Function(
            List<Record> records, String message, String error)
        error,
  }) {
    return error(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Record> records, String message, String error)?
        initial,
    TResult? Function(List<Record> records, String message, String error)?
        loading,
    TResult? Function(List<Record> records, String message, String error)?
        loaded,
    TResult? Function(List<Record> records, String message, String error)?
        error,
  }) {
    return error?.call(records, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Record> records, String message, String error)?
        initial,
    TResult Function(List<Record> records, String message, String error)?
        loading,
    TResult Function(List<Record> records, String message, String error)?
        loaded,
    TResult Function(List<Record> records, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(records, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordStateInitial value) initial,
    required TResult Function(RecordStateLoading value) loading,
    required TResult Function(RecordStateLoaded value) loaded,
    required TResult Function(RecordStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecordStateInitial value)? initial,
    TResult? Function(RecordStateLoading value)? loading,
    TResult? Function(RecordStateLoaded value)? loaded,
    TResult? Function(RecordStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordStateInitial value)? initial,
    TResult Function(RecordStateLoading value)? loading,
    TResult Function(RecordStateLoaded value)? loaded,
    TResult Function(RecordStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecordStateError implements RecordState {
  const factory RecordStateError(
      {final List<Record> records,
      final String message,
      required final String error}) = _$RecordStateError;

  @override
  List<Record> get records;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$RecordStateErrorCopyWith<_$RecordStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
