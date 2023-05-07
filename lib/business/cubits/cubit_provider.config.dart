// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart'
    as _i3;
import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart'
    as _i10;
import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart'
    as _i12;
import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart'
    as _i11;
import 'package:money_tracker/data/services/category_service/category_service.dart'
    as _i4;
import 'package:money_tracker/data/services/category_service/category_service_api.dart'
    as _i5;
import 'package:money_tracker/data/services/category_service/category_service_mock.dart'
    as _i6;
import 'package:money_tracker/data/services/record_service/record_service.dart'
    as _i7;
import 'package:money_tracker/data/services/record_service/record_service_api.dart'
    as _i8;
import 'package:money_tracker/data/services/record_service/record_service_mock.dart'
    as _i9;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.CategoryService>(
      () => _i5.CategoryServiceApi(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.CategoryService>(
      () => _i6.CategoryServiceMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i7.RecordService>(
      () => _i8.RecordServiceApi(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i7.RecordService>(
      () => _i9.RecordServiceMock(),
      registerFor: {_dev},
    );
    gh.factory<_i10.CategoryCubit>(
        () => _i10.CategoryCubit(categoryService: gh<_i4.CategoryService>()));
    gh.factory<_i11.RecordCubit>(
        () => _i11.RecordCubit(recordService: gh<_i7.RecordService>()));
    gh.factory<_i12.ExpenseCubit>(() => _i12.ExpenseCubit(
          authCubit: gh<_i3.AuthCubit>(),
          categoryCubit: gh<_i10.CategoryCubit>(),
          recordCubit: gh<_i11.RecordCubit>(),
        ));
    return this;
  }
}
