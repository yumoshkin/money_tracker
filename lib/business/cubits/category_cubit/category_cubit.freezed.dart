// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  List<Category> get categories => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Category> categories, String message, String error)
        initial,
    required TResult Function(
            List<Category> categories, String message, String error)
        loading,
    required TResult Function(
            List<Category> categories, String message, String error)
        loaded,
    required TResult Function(
            List<Category> categories, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String message, String error)?
        initial,
    TResult? Function(List<Category> categories, String message, String error)?
        loading,
    TResult? Function(List<Category> categories, String message, String error)?
        loaded,
    TResult? Function(List<Category> categories, String message, String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String message, String error)?
        initial,
    TResult Function(List<Category> categories, String message, String error)?
        loading,
    TResult Function(List<Category> categories, String message, String error)?
        loaded,
    TResult Function(List<Category> categories, String message, String error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call({List<Category> categories, String message, String error});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
abstract class _$$CategoryStateInitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateInitialCopyWith(_$CategoryStateInitial value,
          $Res Function(_$CategoryStateInitial) then) =
      __$$CategoryStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String message, String error});
}

/// @nodoc
class __$$CategoryStateInitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateInitial>
    implements _$$CategoryStateInitialCopyWith<$Res> {
  __$$CategoryStateInitialCopyWithImpl(_$CategoryStateInitial _value,
      $Res Function(_$CategoryStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$CategoryStateInitial(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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

class _$CategoryStateInitial implements CategoryStateInitial {
  const _$CategoryStateInitial(
      {final List<Category> categories = const [],
      this.message = '',
      this.error = ''})
      : _categories = categories;

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CategoryState.initial(categories: $categories, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateInitial &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateInitialCopyWith<_$CategoryStateInitial> get copyWith =>
      __$$CategoryStateInitialCopyWithImpl<_$CategoryStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Category> categories, String message, String error)
        initial,
    required TResult Function(
            List<Category> categories, String message, String error)
        loading,
    required TResult Function(
            List<Category> categories, String message, String error)
        loaded,
    required TResult Function(
            List<Category> categories, String message, String error)
        error,
  }) {
    return initial(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String message, String error)?
        initial,
    TResult? Function(List<Category> categories, String message, String error)?
        loading,
    TResult? Function(List<Category> categories, String message, String error)?
        loaded,
    TResult? Function(List<Category> categories, String message, String error)?
        error,
  }) {
    return initial?.call(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String message, String error)?
        initial,
    TResult Function(List<Category> categories, String message, String error)?
        loading,
    TResult Function(List<Category> categories, String message, String error)?
        loaded,
    TResult Function(List<Category> categories, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(categories, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryStateInitial implements CategoryState {
  const factory CategoryStateInitial(
      {final List<Category> categories,
      final String message,
      final String error}) = _$CategoryStateInitial;

  @override
  List<Category> get categories;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateInitialCopyWith<_$CategoryStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryStateLoadingCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateLoadingCopyWith(_$CategoryStateLoading value,
          $Res Function(_$CategoryStateLoading) then) =
      __$$CategoryStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String message, String error});
}

/// @nodoc
class __$$CategoryStateLoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoading>
    implements _$$CategoryStateLoadingCopyWith<$Res> {
  __$$CategoryStateLoadingCopyWithImpl(_$CategoryStateLoading _value,
      $Res Function(_$CategoryStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$CategoryStateLoading(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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

class _$CategoryStateLoading implements CategoryStateLoading {
  const _$CategoryStateLoading(
      {final List<Category> categories = const [],
      this.message = '',
      this.error = ''})
      : _categories = categories;

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CategoryState.loading(categories: $categories, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateLoading &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateLoadingCopyWith<_$CategoryStateLoading> get copyWith =>
      __$$CategoryStateLoadingCopyWithImpl<_$CategoryStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Category> categories, String message, String error)
        initial,
    required TResult Function(
            List<Category> categories, String message, String error)
        loading,
    required TResult Function(
            List<Category> categories, String message, String error)
        loaded,
    required TResult Function(
            List<Category> categories, String message, String error)
        error,
  }) {
    return loading(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String message, String error)?
        initial,
    TResult? Function(List<Category> categories, String message, String error)?
        loading,
    TResult? Function(List<Category> categories, String message, String error)?
        loaded,
    TResult? Function(List<Category> categories, String message, String error)?
        error,
  }) {
    return loading?.call(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String message, String error)?
        initial,
    TResult Function(List<Category> categories, String message, String error)?
        loading,
    TResult Function(List<Category> categories, String message, String error)?
        loaded,
    TResult Function(List<Category> categories, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(categories, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryStateLoading implements CategoryState {
  const factory CategoryStateLoading(
      {final List<Category> categories,
      final String message,
      final String error}) = _$CategoryStateLoading;

  @override
  List<Category> get categories;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateLoadingCopyWith<_$CategoryStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryStateLoadedCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateLoadedCopyWith(_$CategoryStateLoaded value,
          $Res Function(_$CategoryStateLoaded) then) =
      __$$CategoryStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String message, String error});
}

/// @nodoc
class __$$CategoryStateLoadedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoaded>
    implements _$$CategoryStateLoadedCopyWith<$Res> {
  __$$CategoryStateLoadedCopyWithImpl(
      _$CategoryStateLoaded _value, $Res Function(_$CategoryStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$CategoryStateLoaded(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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

class _$CategoryStateLoaded implements CategoryStateLoaded {
  const _$CategoryStateLoaded(
      {required final List<Category> categories,
      this.message = '',
      this.error = ''})
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CategoryState.loaded(categories: $categories, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateLoadedCopyWith<_$CategoryStateLoaded> get copyWith =>
      __$$CategoryStateLoadedCopyWithImpl<_$CategoryStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Category> categories, String message, String error)
        initial,
    required TResult Function(
            List<Category> categories, String message, String error)
        loading,
    required TResult Function(
            List<Category> categories, String message, String error)
        loaded,
    required TResult Function(
            List<Category> categories, String message, String error)
        error,
  }) {
    return loaded(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String message, String error)?
        initial,
    TResult? Function(List<Category> categories, String message, String error)?
        loading,
    TResult? Function(List<Category> categories, String message, String error)?
        loaded,
    TResult? Function(List<Category> categories, String message, String error)?
        error,
  }) {
    return loaded?.call(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String message, String error)?
        initial,
    TResult Function(List<Category> categories, String message, String error)?
        loading,
    TResult Function(List<Category> categories, String message, String error)?
        loaded,
    TResult Function(List<Category> categories, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryStateLoaded implements CategoryState {
  const factory CategoryStateLoaded(
      {required final List<Category> categories,
      final String message,
      final String error}) = _$CategoryStateLoaded;

  @override
  List<Category> get categories;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateLoadedCopyWith<_$CategoryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryStateErrorCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateErrorCopyWith(_$CategoryStateError value,
          $Res Function(_$CategoryStateError) then) =
      __$$CategoryStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String message, String error});
}

/// @nodoc
class __$$CategoryStateErrorCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateError>
    implements _$$CategoryStateErrorCopyWith<$Res> {
  __$$CategoryStateErrorCopyWithImpl(
      _$CategoryStateError _value, $Res Function(_$CategoryStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$CategoryStateError(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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

class _$CategoryStateError implements CategoryStateError {
  const _$CategoryStateError(
      {final List<Category> categories = const [],
      this.message = '',
      required this.error})
      : _categories = categories;

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'CategoryState.error(categories: $categories, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateError &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateErrorCopyWith<_$CategoryStateError> get copyWith =>
      __$$CategoryStateErrorCopyWithImpl<_$CategoryStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Category> categories, String message, String error)
        initial,
    required TResult Function(
            List<Category> categories, String message, String error)
        loading,
    required TResult Function(
            List<Category> categories, String message, String error)
        loaded,
    required TResult Function(
            List<Category> categories, String message, String error)
        error,
  }) {
    return error(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String message, String error)?
        initial,
    TResult? Function(List<Category> categories, String message, String error)?
        loading,
    TResult? Function(List<Category> categories, String message, String error)?
        loaded,
    TResult? Function(List<Category> categories, String message, String error)?
        error,
  }) {
    return error?.call(categories, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String message, String error)?
        initial,
    TResult Function(List<Category> categories, String message, String error)?
        loading,
    TResult Function(List<Category> categories, String message, String error)?
        loaded,
    TResult Function(List<Category> categories, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(categories, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryStateError implements CategoryState {
  const factory CategoryStateError(
      {final List<Category> categories,
      final String message,
      required final String error}) = _$CategoryStateError;

  @override
  List<Category> get categories;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateErrorCopyWith<_$CategoryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
