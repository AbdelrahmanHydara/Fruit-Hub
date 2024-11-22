import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/theming/app_colors.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onPressed,});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.bold16.copyWith(
              color: Colors.white,
            ),
          )
      ),
    );
  }
}
