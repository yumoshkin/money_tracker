// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseState {
  DateTime get currentDate => throw _privateConstructorUsedError;
  String get monthYearTitle => throw _privateConstructorUsedError;
  List<Expense> get expenses => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        initial,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loading,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loaded,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseStateInitial value) initial,
    required TResult Function(ExpenseStateLoading value) loading,
    required TResult Function(ExpenseStateLoaded value) loaded,
    required TResult Function(ExpenseStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateInitial value)? initial,
    TResult? Function(ExpenseStateLoading value)? loading,
    TResult? Function(ExpenseStateLoaded value)? loaded,
    TResult? Function(ExpenseStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseStateInitial value)? initial,
    TResult Function(ExpenseStateLoading value)? loading,
    TResult Function(ExpenseStateLoaded value)? loaded,
    TResult Function(ExpenseStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseStateCopyWith<ExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
  @useResult
  $Res call(
      {DateTime currentDate,
      String monthYearTitle,
      List<Expense> expenses,
      String message,
      String error});
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? monthYearTitle = null,
    Object? expenses = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthYearTitle: null == monthYearTitle
          ? _value.monthYearTitle
          : monthYearTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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
abstract class _$$ExpenseStateInitialCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateInitialCopyWith(_$ExpenseStateInitial value,
          $Res Function(_$ExpenseStateInitial) then) =
      __$$ExpenseStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentDate,
      String monthYearTitle,
      List<Expense> expenses,
      String message,
      String error});
}

/// @nodoc
class __$$ExpenseStateInitialCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateInitial>
    implements _$$ExpenseStateInitialCopyWith<$Res> {
  __$$ExpenseStateInitialCopyWithImpl(
      _$ExpenseStateInitial _value, $Res Function(_$ExpenseStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? monthYearTitle = null,
    Object? expenses = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ExpenseStateInitial(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthYearTitle: null == monthYearTitle
          ? _value.monthYearTitle
          : monthYearTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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

class _$ExpenseStateInitial implements ExpenseStateInitial {
  const _$ExpenseStateInitial(
      {required this.currentDate,
      required this.monthYearTitle,
      final List<Expense> expenses = const [],
      this.message = '',
      this.error = ''})
      : _expenses = expenses;

  @override
  final DateTime currentDate;
  @override
  final String monthYearTitle;
  final List<Expense> _expenses;
  @override
  @JsonKey()
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ExpenseState.initial(currentDate: $currentDate, monthYearTitle: $monthYearTitle, expenses: $expenses, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateInitial &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.monthYearTitle, monthYearTitle) ||
                other.monthYearTitle == monthYearTitle) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentDate, monthYearTitle,
      const DeepCollectionEquality().hash(_expenses), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateInitialCopyWith<_$ExpenseStateInitial> get copyWith =>
      __$$ExpenseStateInitialCopyWithImpl<_$ExpenseStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        initial,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loading,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loaded,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        error,
  }) {
    return initial(currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
  }) {
    return initial?.call(
        currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          currentDate, monthYearTitle, expenses, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseStateInitial value) initial,
    required TResult Function(ExpenseStateLoading value) loading,
    required TResult Function(ExpenseStateLoaded value) loaded,
    required TResult Function(ExpenseStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateInitial value)? initial,
    TResult? Function(ExpenseStateLoading value)? loading,
    TResult? Function(ExpenseStateLoaded value)? loaded,
    TResult? Function(ExpenseStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseStateInitial value)? initial,
    TResult Function(ExpenseStateLoading value)? loading,
    TResult Function(ExpenseStateLoaded value)? loaded,
    TResult Function(ExpenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExpenseStateInitial implements ExpenseState {
  const factory ExpenseStateInitial(
      {required final DateTime currentDate,
      required final String monthYearTitle,
      final List<Expense> expenses,
      final String message,
      final String error}) = _$ExpenseStateInitial;

  @override
  DateTime get currentDate;
  @override
  String get monthYearTitle;
  @override
  List<Expense> get expenses;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateInitialCopyWith<_$ExpenseStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseStateLoadingCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateLoadingCopyWith(_$ExpenseStateLoading value,
          $Res Function(_$ExpenseStateLoading) then) =
      __$$ExpenseStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentDate,
      String monthYearTitle,
      List<Expense> expenses,
      String message,
      String error});
}

/// @nodoc
class __$$ExpenseStateLoadingCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateLoading>
    implements _$$ExpenseStateLoadingCopyWith<$Res> {
  __$$ExpenseStateLoadingCopyWithImpl(
      _$ExpenseStateLoading _value, $Res Function(_$ExpenseStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? monthYearTitle = null,
    Object? expenses = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ExpenseStateLoading(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthYearTitle: null == monthYearTitle
          ? _value.monthYearTitle
          : monthYearTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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

class _$ExpenseStateLoading implements ExpenseStateLoading {
  const _$ExpenseStateLoading(
      {required this.currentDate,
      required this.monthYearTitle,
      final List<Expense> expenses = const [],
      this.message = '',
      this.error = ''})
      : _expenses = expenses;

  @override
  final DateTime currentDate;
  @override
  final String monthYearTitle;
  final List<Expense> _expenses;
  @override
  @JsonKey()
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ExpenseState.loading(currentDate: $currentDate, monthYearTitle: $monthYearTitle, expenses: $expenses, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateLoading &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.monthYearTitle, monthYearTitle) ||
                other.monthYearTitle == monthYearTitle) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentDate, monthYearTitle,
      const DeepCollectionEquality().hash(_expenses), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateLoadingCopyWith<_$ExpenseStateLoading> get copyWith =>
      __$$ExpenseStateLoadingCopyWithImpl<_$ExpenseStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        initial,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loading,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loaded,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        error,
  }) {
    return loading(currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
  }) {
    return loading?.call(
        currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(
          currentDate, monthYearTitle, expenses, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseStateInitial value) initial,
    required TResult Function(ExpenseStateLoading value) loading,
    required TResult Function(ExpenseStateLoaded value) loaded,
    required TResult Function(ExpenseStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateInitial value)? initial,
    TResult? Function(ExpenseStateLoading value)? loading,
    TResult? Function(ExpenseStateLoaded value)? loaded,
    TResult? Function(ExpenseStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseStateInitial value)? initial,
    TResult Function(ExpenseStateLoading value)? loading,
    TResult Function(ExpenseStateLoaded value)? loaded,
    TResult Function(ExpenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExpenseStateLoading implements ExpenseState {
  const factory ExpenseStateLoading(
      {required final DateTime currentDate,
      required final String monthYearTitle,
      final List<Expense> expenses,
      final String message,
      final String error}) = _$ExpenseStateLoading;

  @override
  DateTime get currentDate;
  @override
  String get monthYearTitle;
  @override
  List<Expense> get expenses;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateLoadingCopyWith<_$ExpenseStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseStateLoadedCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateLoadedCopyWith(_$ExpenseStateLoaded value,
          $Res Function(_$ExpenseStateLoaded) then) =
      __$$ExpenseStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentDate,
      String monthYearTitle,
      List<Expense> expenses,
      String message,
      String error});
}

/// @nodoc
class __$$ExpenseStateLoadedCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateLoaded>
    implements _$$ExpenseStateLoadedCopyWith<$Res> {
  __$$ExpenseStateLoadedCopyWithImpl(
      _$ExpenseStateLoaded _value, $Res Function(_$ExpenseStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? monthYearTitle = null,
    Object? expenses = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ExpenseStateLoaded(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthYearTitle: null == monthYearTitle
          ? _value.monthYearTitle
          : monthYearTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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

class _$ExpenseStateLoaded implements ExpenseStateLoaded {
  const _$ExpenseStateLoaded(
      {required this.currentDate,
      required this.monthYearTitle,
      required final List<Expense> expenses,
      this.message = '',
      this.error = ''})
      : _expenses = expenses;

  @override
  final DateTime currentDate;
  @override
  final String monthYearTitle;
  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ExpenseState.loaded(currentDate: $currentDate, monthYearTitle: $monthYearTitle, expenses: $expenses, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateLoaded &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.monthYearTitle, monthYearTitle) ||
                other.monthYearTitle == monthYearTitle) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentDate, monthYearTitle,
      const DeepCollectionEquality().hash(_expenses), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateLoadedCopyWith<_$ExpenseStateLoaded> get copyWith =>
      __$$ExpenseStateLoadedCopyWithImpl<_$ExpenseStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        initial,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loading,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loaded,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        error,
  }) {
    return loaded(currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
  }) {
    return loaded?.call(
        currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentDate, monthYearTitle, expenses, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseStateInitial value) initial,
    required TResult Function(ExpenseStateLoading value) loading,
    required TResult Function(ExpenseStateLoaded value) loaded,
    required TResult Function(ExpenseStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateInitial value)? initial,
    TResult? Function(ExpenseStateLoading value)? loading,
    TResult? Function(ExpenseStateLoaded value)? loaded,
    TResult? Function(ExpenseStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseStateInitial value)? initial,
    TResult Function(ExpenseStateLoading value)? loading,
    TResult Function(ExpenseStateLoaded value)? loaded,
    TResult Function(ExpenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExpenseStateLoaded implements ExpenseState {
  const factory ExpenseStateLoaded(
      {required final DateTime currentDate,
      required final String monthYearTitle,
      required final List<Expense> expenses,
      final String message,
      final String error}) = _$ExpenseStateLoaded;

  @override
  DateTime get currentDate;
  @override
  String get monthYearTitle;
  @override
  List<Expense> get expenses;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateLoadedCopyWith<_$ExpenseStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseStateErrorCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateErrorCopyWith(
          _$ExpenseStateError value, $Res Function(_$ExpenseStateError) then) =
      __$$ExpenseStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentDate,
      String monthYearTitle,
      List<Expense> expenses,
      String message,
      String error});
}

/// @nodoc
class __$$ExpenseStateErrorCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateError>
    implements _$$ExpenseStateErrorCopyWith<$Res> {
  __$$ExpenseStateErrorCopyWithImpl(
      _$ExpenseStateError _value, $Res Function(_$ExpenseStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? monthYearTitle = null,
    Object? expenses = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ExpenseStateError(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthYearTitle: null == monthYearTitle
          ? _value.monthYearTitle
          : monthYearTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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

class _$ExpenseStateError implements ExpenseStateError {
  const _$ExpenseStateError(
      {required this.currentDate,
      required this.monthYearTitle,
      final List<Expense> expenses = const [],
      this.message = '',
      required this.error})
      : _expenses = expenses;

  @override
  final DateTime currentDate;
  @override
  final String monthYearTitle;
  final List<Expense> _expenses;
  @override
  @JsonKey()
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'ExpenseState.error(currentDate: $currentDate, monthYearTitle: $monthYearTitle, expenses: $expenses, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateError &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.monthYearTitle, monthYearTitle) ||
                other.monthYearTitle == monthYearTitle) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentDate, monthYearTitle,
      const DeepCollectionEquality().hash(_expenses), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateErrorCopyWith<_$ExpenseStateError> get copyWith =>
      __$$ExpenseStateErrorCopyWithImpl<_$ExpenseStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        initial,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loading,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        loaded,
    required TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)
        error,
  }) {
    return error(currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult? Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
  }) {
    return error?.call(
        currentDate, monthYearTitle, expenses, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        initial,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loading,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        loaded,
    TResult Function(DateTime currentDate, String monthYearTitle,
            List<Expense> expenses, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(currentDate, monthYearTitle, expenses, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpenseStateInitial value) initial,
    required TResult Function(ExpenseStateLoading value) loading,
    required TResult Function(ExpenseStateLoaded value) loaded,
    required TResult Function(ExpenseStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateInitial value)? initial,
    TResult? Function(ExpenseStateLoading value)? loading,
    TResult? Function(ExpenseStateLoaded value)? loaded,
    TResult? Function(ExpenseStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpenseStateInitial value)? initial,
    TResult Function(ExpenseStateLoading value)? loading,
    TResult Function(ExpenseStateLoaded value)? loaded,
    TResult Function(ExpenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExpenseStateError implements ExpenseState {
  const factory ExpenseStateError(
      {required final DateTime currentDate,
      required final String monthYearTitle,
      final List<Expense> expenses,
      final String message,
      required final String error}) = _$ExpenseStateError;

  @override
  DateTime get currentDate;
  @override
  String get monthYearTitle;
  @override
  List<Expense> get expenses;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateErrorCopyWith<_$ExpenseStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
