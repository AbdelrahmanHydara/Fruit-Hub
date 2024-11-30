import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/theming/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked});

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 24.w,
      height: 24.h,
      decoration: ShapeDecoration(
        color: isChecked ? AppColors.primaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
            color: isChecked ? Colors.transparent : Color(0xFFDCDEDE),
            width: 1.5,
          ),
        ),
      ),
      duration: Duration(
        milliseconds: 300,
      ),
      child: isChecked ? Padding(
        padding: const EdgeInsets.all(2),
        child: SvgPicture.asset(
          "assets/svg/Check.svg",
        ),
      ) : SizedBox(),
    );
  }
}
