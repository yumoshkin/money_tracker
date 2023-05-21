import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:money_tracker/data/models/category/category.dart';
import 'package:money_tracker/data/models/record/record.dart';

part 'expense.freezed.dart';

@unfreezed
class Expense with _$Expense {
  factory Expense({
    required int index,
    required Category category,
    required List<Record> records,
    required double sum,
  }) = _Expense;
}
