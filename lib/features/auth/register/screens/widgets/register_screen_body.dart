import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/widgets/app_button.dart';
import 'package:fruits_app/core/helpers/spacing.dart';
import 'package:fruits_app/core/constants.dart';
import 'have_an_account.dart';
import 'register_form_field.dart';
import 'terms_and_conditions.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppHorizontalPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const RegisterFormField(),
            verticalSpace(16),
            const TermsAndConditions(),
            verticalSpace(32),
            AppButton(
                text: "إنشاء حساب جديد",
                onPressed: () {

                }),
            verticalSpace(32),
            const HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
