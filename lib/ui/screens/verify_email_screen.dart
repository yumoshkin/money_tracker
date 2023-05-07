import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/ui/screens/firebase_screen.dart';
import 'package:money_tracker/ui/utils/functions.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool _isEmailVerified = false;
  bool _canResendEmail = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!_isEmailVerified) {
      sendEmail();

      _timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      _isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (_isEmailVerified) _timer?.cancel();
  }

  Future<void> sendEmail() async {
    try {
      context.read<AuthCubit>().sendEmailVerification();

      setState(() {
        _canResendEmail = false;
      });

      await Future.delayed(const Duration(seconds: 5));

      setState(() {
        _canResendEmail = true;
      });
    } catch (e) {
      if (mounted) {
        showSnackBar(context, '$e', true);
      }
    }
  }

  Future<void> deleteUser(BuildContext context) async {
    _timer?.cancel();

    await FirebaseAuth.instance.currentUser!.delete();

    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FirebaseScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) => _isEmailVerified
      ? const FirebaseScreen()
      : Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Верификация электронной почты'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  const Text(
                    'Подтверждение E-mail',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Письмо для подтверждения E-mail было отправлено на вашу электронную почту',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton.icon(
                    onPressed: _canResendEmail ? sendEmail : null,
                    icon: const Icon(Icons.email),
                    label: const Text(
                      'Повторно отправить',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () => deleteUser(context),
                    child: const Text('Отменить'),
                  )
                ],
              ),
            ),
          ),
        );
}
