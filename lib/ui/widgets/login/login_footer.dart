import 'package:flutter/material.dart';

import 'package:money_tracker/ui/screens/login_screen.dart';
import 'package:money_tracker/ui/screens/reset_password_screen.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
    required this.formType,
    required this.toggleForm,
  }) : super(key: key);
  final FormType formType;
  final Function() toggleForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        formType == FormType.login
            ? Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen()),
                    );
                  },
                  child: const Text('Забыли пароль'),
                ),
              )
            : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formType == FormType.login
                  ? 'Еще нет аккаунта?'
                  : 'Уже есть аккаунт?',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            TextButton(
              onPressed: toggleForm,
              child: Text(formType == FormType.login ? 'Регистрация' : 'Войти'),
            ),
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
