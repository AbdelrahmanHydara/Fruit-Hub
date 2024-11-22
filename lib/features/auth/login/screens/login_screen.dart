import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_appbar.dart';
import 'widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          title: "تسجيل دخول",
      ),
      body: LoginScreenBody(),
    );
  }

}
