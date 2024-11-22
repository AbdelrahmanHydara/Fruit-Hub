import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key,
    required this.hintText, required this.keyboardType, this.suffixIcon});

  final TextInputType keyboardType;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: AppTextStyles.bold13.copyWith(
          color: const Color(0xFF949D9E),
        ),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(
          width: 1,
          color: const Color(0xFFFE6E9E9),
        ),
      );
  }
}
