import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_tracker/business/cubits/auth_cubit/auth_cubit.dart';
import 'package:money_tracker/ui/screens/login_screen.dart';
import 'package:money_tracker/ui/theme/theme.dart';
import 'package:money_tracker/ui/widgets/profile/profile_avatar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final email = context.read<AuthCubit>().state.user!.email;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: themeData.colorScheme.primary,
        ),
        backgroundColor: themeData.colorScheme.primary,
        title: const Text('Профиль'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: ProfileAvatar(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    email!,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 11),
                  SizedBox(
                    width: 145,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<AuthCubit>().signout();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text('Выйти'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
