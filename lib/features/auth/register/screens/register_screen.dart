import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_appbar.dart';
import 'widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          title: "حساب جديد",
      ),
      body: const RegisterScreenBody(),
    );
  }

}
