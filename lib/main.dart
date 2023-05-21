import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';

import 'package:money_tracker/business/cubits/category_cubit/category_cubit.dart';
import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/business/cubits/record_cubit/record_cubit.dart';
import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/business/cubits/cubit_provider.dart';
import 'package:money_tracker/ui/screens/firebase_screen.dart';
import 'package:money_tracker/ui/theme/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initializeCubit(Environment.dev);
  Intl.defaultLocale = 'ru_RU';
  Intl.systemLocale = await findSystemLocale();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => GetIt.I.get<AuthCubit>(),
        ),
        BlocProvider<CategoryCubit>(
          create: (_) => GetIt.I.get<CategoryCubit>(),
          lazy: false,
        ),
        BlocProvider<RecordCubit>(
          create: (_) => GetIt.I.get<RecordCubit>(),
        ),
      ],
      child: BlocProvider<ExpenseCubit>(
        create: (context) => ExpenseCubit(
          authCubit: BlocProvider.of<AuthCubit>(context),
          categoryCubit: BlocProvider.of<CategoryCubit>(context),
          recordCubit: BlocProvider.of<RecordCubit>(context),
        )..init(),
        child: MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('ru'),
          ],
          title: 'Учет расходов',
          debugShowCheckedModeBanner: false,
          theme: themeData,
          home: const FirebaseScreen(),
        ),
      ),
    );
  }
}
