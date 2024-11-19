import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/helpers/extensions.dart';
import 'package:fruits_app/core/helpers/spacing.dart';
import 'package:fruits_app/core/routing/routes.dart';
import 'package:fruits_app/core/services/shared_pref_singleton.dart';
import 'package:fruits_app/core/theming/app_colors.dart';
import 'package:fruits_app/core/widgets/app_button.dart';
import 'onboarding_page_view.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {

  int currentPage = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnboardingPageView(
              pageController: pageController,
            ),
        ),
        _buildDotsIndicator(),
        verticalSpace(24),
        _buildStartButton(context),
        verticalSpace(34),
      ],
    );
  }

  Visibility _buildStartButton(BuildContext context) {
    return Visibility(
        visible: currentPage == 1 ? true : false,
        maintainSize: true,
        maintainState: true,
        maintainAnimation: true,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppHorizontalPadding.w,
          ),
          child: AppButton(
            onPressed: () {
              SharedPrefSingleton.setBool(isOnBoardingSeen, true);
              context.pushReplacementNamed(Routes.loginScreen);
            },
            text: "ابدأ الان",
          ),
        ),
      );
  }

  Widget _buildDotsIndicator() {
    return DotsIndicator(
        dotsCount: 2,
        decorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          color: currentPage == 1
              ? AppColors.primaryColor
              : AppColors.primaryColor.withOpacity(.5),
        ),
      );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
