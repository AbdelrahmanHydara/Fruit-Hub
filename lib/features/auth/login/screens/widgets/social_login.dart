import 'package:flutter/material.dart';
import 'package:fruits_app/core/helpers/spacing.dart';

import 'social_button.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          image: 'assets/svg/google_icon.svg',
          text: 'تسجيل بواسطة جوجل',
          onPressed: () {

          },
        ),
        verticalSpace(16),
        SocialButton(
          image: 'assets/svg/facebook_icon.svg',
          text: 'تسجيل بواسطة فيسبوك',
          onPressed: () {

          },
        ),
        verticalSpace(16),
        SocialButton(
          image: 'assets/svg/apple_icon.svg',
          text: 'تسجيل بواسطة أبل',
          onPressed: () {

          },
        ),
      ],
    );
  }
}
