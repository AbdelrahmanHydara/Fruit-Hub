import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/helpers/spacing.dart';
import 'package:fruits_app/core/theming/app_colors.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';
import 'package:fruits_app/core/widgets/app_button.dart';
import 'package:fruits_app/core/widgets/or_divider.dart';
import 'app_form_field.dart';
import 'dont_have_an_account.dart';
import 'social_login.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppHorizontalPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const AppFormField(),
            buildForgetPassword(),
            verticalSpace(32),
            AppButton(
                text: "تسجيل دخول",
                onPressed: () {

                }),
            verticalSpace(32),
            const DontHaveAnAccount(),
            verticalSpace(32),
            const OrDivider(),
            verticalSpace(30),
            const SocialLogin(),
          ],
        ),
      ),
    );
  }

  Text buildForgetPassword() {
    return Text(
      "نسيت كلمة المرور؟",
      style: AppTextStyles.semiBold13.copyWith(
        color: AppColors.lightPrimaryColor,
      ),
    );
  }
}
