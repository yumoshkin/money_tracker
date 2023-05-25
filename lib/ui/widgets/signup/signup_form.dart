import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/business/cubits/expense_cubit/expense_cubit.dart';
import 'package:money_tracker/ui/screens/firebase_screen.dart';
import 'package:money_tracker/ui/utils/functions.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_email.dart';
import 'package:money_tracker/ui/widgets/form_field/form_field_password.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordObscure = true;
  bool _isAutovalidate = false;
  bool _isProcessing = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordObscure = !_isPasswordObscure;
    });
  }

  void _signup(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      setState(() {
        _isAutovalidate = true;
      });
      return;
    }

    setState(() {
      _isProcessing = true;
    });

    final isLogged = await context.read<AuthCubit>().signup(
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );

    if (isLogged) {
      if (mounted) {
        await context.read<ExpenseCubit>().init();
      }

      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const FirebaseScreen(),
          ),
        );
      }
    }

    setState(() {
      _isProcessing = false;
    });
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
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              FormFieldEmail(
                controller: _emailController,
                labelText: 'E-mail',
                isAutovalidate: _isAutovalidate,
              ),
              FormFieldPassword(
                controller: _passwordController,
                labelText: 'Пароль',
                isAutovalidate: _isAutovalidate,
                isPasswordObscure: _isPasswordObscure,
                togglePasswordVisibility: _togglePasswordVisibility,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: !_isProcessing ? () => _signup(context) : null,
                child: !_isProcessing
                    ? const Text('Регистрация')
                    : const CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
