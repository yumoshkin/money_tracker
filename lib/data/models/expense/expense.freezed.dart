// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Expense {
  int get index => throw _privateConstructorUsedError;
  set index(int value) => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  set categoryId(String value) => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  set categoryName(String value) => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  set color(String value) => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;
  set records(List<Record> value) => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  set sum(double value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {int index,
      String categoryId,
      String categoryName,
      String color,
      List<Record> records,
      double sum});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? color = null,
    Object? records = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$_ExpenseCopyWith(
          _$_Expense value, $Res Function(_$_Expense) then) =
      __$$_ExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String categoryId,
      String categoryName,
      String color,
      List<Record> records,
      double sum});
}

/// @nodoc
class __$$_ExpenseCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$_Expense>
    implements _$$_ExpenseCopyWith<$Res> {
  __$$_ExpenseCopyWithImpl(_$_Expense _value, $Res Function(_$_Expense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? color = null,
    Object? records = null,
    Object? sum = null,
  }) {
    return _then(_$_Expense(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Expense implements _Expense {
  _$_Expense(
      {required this.index,
      required this.categoryId,
      required this.categoryName,
      required this.color,
      required this.records,
      required this.sum});

  @override
  int index;
  @override
  String categoryId;
  @override
  String categoryName;
  @override
  String color;
  @override
  List<Record> records;
  @override
  double sum;

  @override
  String toString() {
    return 'Expense(index: $index, categoryId: $categoryId, categoryName: $categoryName, color: $color, records: $records, sum: $sum)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      __$$_ExpenseCopyWithImpl<_$_Expense>(this, _$identity);
}

abstract class _Expense implements Expense {
  factory _Expense(
      {required int index,
      required String categoryId,
      required String categoryName,
      required String color,
      required List<Record> records,
      required double sum}) = _$_Expense;

  @override
  int get index;
  set index(int value);
  @override
  String get categoryId;
  set categoryId(String value);
  @override
  String get categoryName;
  set categoryName(String value);
  @override
  String get color;
  set color(String value);
  @override
  List<Record> get records;
  set records(List<Record> value);
  @override
  double get sum;
  set sum(double value);
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      throw _privateConstructorUsedError;
}
