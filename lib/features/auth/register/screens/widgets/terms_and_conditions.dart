import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/helpers/spacing.dart';
import 'package:fruits_app/core/theming/app_colors.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: true,
        ),
        horizontalSpace(16),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - (AppHorizontalPadding.w * 2) - 48 ,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "من خلال إنشاء حساب , فإنك توافق علي ",
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightGeryColor,
                  ),
                ),
                TextSpan(
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.myBlack,
                    fontSize: 15,
                  ),
                  text: "الشروط والأحكام ",
                ),
                TextSpan(
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 15,
                  ),
                  text: "الخاصة بنا",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
