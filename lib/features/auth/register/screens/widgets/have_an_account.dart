import 'package:flutter/material.dart';
import 'package:fruits_app/core/helpers/extensions.dart';
import 'package:fruits_app/core/routing/routes.dart';
import 'package:fruits_app/core/theming/app_colors.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class HaveAnAccount  extends StatelessWidget {
  const HaveAnAccount ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "تمتلك حساب بالفعل؟",
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.lightGeryColor,
          ),
        ),
        TextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
          "تسجيل الدخول",
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.primaryColor,),
          ),
        ),
      ],
    );
  }
}
