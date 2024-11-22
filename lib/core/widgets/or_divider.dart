import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppHorizontalPadding.w),
          child: Text(
            "أو",
            style: AppTextStyles.semiBold16,
          ),
        ),
        buildDivider(),
      ],
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
          color: const Color(0xFFDCDEDE),
        ),
      );
  }
}
