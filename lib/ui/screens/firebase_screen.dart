import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/ui/screens/home_screen.dart';
import 'package:money_tracker/ui/screens/login_screen.dart';
import 'package:money_tracker/ui/screens/verify_email_screen.dart';

class FirebaseScreen extends StatelessWidget {
  const FirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        context.read<AuthCubit>().setUser(snapshot.data);

        if (snapshot.data == null) {
          return const LoginScreen();
        } else if (snapshot.hasData) {
          if (!snapshot.data!.emailVerified) {
            return const VerifyEmailScreen();
          }

          return const HomeScreen();
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Ошибка аутентификации: ${snapshot.error}'),
            ),
          );
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
