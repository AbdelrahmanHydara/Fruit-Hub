import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.image, required this.text, required this.onPressed});

  final String image, text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
            side: const BorderSide(
              width: 1,
              color: Color(0xFFDCDEDE),
            ),
          )
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(image),
          title: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16,
          ),
        ),
      ),
    );
  }
}
