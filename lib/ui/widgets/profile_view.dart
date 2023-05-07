import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:money_tracker/ui/theme/theme.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: themeData.colorScheme.primary,
        ),
        backgroundColor: themeData.colorScheme.primary,
        title: Text('Профиль'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Profile view'),
        ),
      ),
    );
  }
}
