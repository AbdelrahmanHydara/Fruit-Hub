import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/helpers/extensions.dart';
import 'package:fruits_app/core/helpers/spacing.dart';
import 'package:fruits_app/core/routing/routes.dart';
import 'package:fruits_app/core/services/shared_pref_singleton.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.background,
    required this.title,
    required this.subtitle,
    required this.isVisible,
  });

  final String image, background, title, subtitle;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height *.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(background,fit: BoxFit.fill)),
              Positioned(
                  left: 0, right: 0, bottom: 0,
                  child: SvgPicture.asset(image)
              ),
              buildSkip(context),
            ],
          ),
        ),
        verticalSpace(64),
        Text(
          title,
          style: AppTextStyles.bold23,
        ),
        verticalSpace(24),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 36.w,
          ),
          child: Text(
            subtitle,
            style: AppTextStyles.semiBold13.copyWith(
              color: Color(0xFF4E5456),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Positioned buildSkip(BuildContext context) {
    return Positioned(
      top: 35.h,
      right: AppHorizontalPadding.w,
      child: Visibility(
        visible: isVisible,
        child: GestureDetector(
          onTap: () {
            SharedPrefSingleton.setBool(isOnBoardingSeen, true);
            context.pushReplacementNamed(Routes.loginScreen);
            },
          child: Text(
            "تخط",
            style: AppTextStyles.regular16.copyWith(
              color: Color(0xFF949D9E),
            ),
          ),
        ),
      ),
    );
  }
}
