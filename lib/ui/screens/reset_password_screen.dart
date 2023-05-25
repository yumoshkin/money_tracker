import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/ui/utils/functions.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_email.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isAutovalidate = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void resetPassword(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      setState(() {
        _isAutovalidate = true;
      });
      return;
    }

    await context.read<AuthCubit>().resetPassword(_emailController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.message.isNotEmpty) {
          showSnackBarSuccess(context, state.message);
        } else if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Сброс пароля'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  const Text(
                    'Письмо для сброса пароля будет отправлено на вашу электронную почту',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FormFieldEmail(
                    controller: _emailController,
                    labelText: 'E-mail',
                    isAutovalidate: _isAutovalidate,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => resetPassword(context),
                    child: const Text('Сбросить пароль'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
