import 'package:flutter/material.dart';

import 'package:money_tracker/ui/widgets/login/login_footer.dart';
import 'package:money_tracker/ui/widgets/login/login_form.dart';
import 'package:money_tracker/ui/widgets/login/login_header.dart';
import 'package:money_tracker/ui/widgets/signup/signup_form.dart';

enum FormType { login, signup }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FormType _formType = FormType.login;

  void toggleForm() {
    setState(() {
      if (_formType == FormType.login) {
        _formType = FormType.signup;
      } else {
        _formType = FormType.login;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height > 600 ? height - 48 : 560,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: height > 600 ? 56 : 20),
                        const LoginHeader(),
                        const SizedBox(height: 42),
                        _formType == FormType.login
                            ? const LoginForm()
                            : const SignupForm(),
                      ],
                    ),
                  ),
                  LoginFooter(formType: _formType, toggleForm: toggleForm),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
