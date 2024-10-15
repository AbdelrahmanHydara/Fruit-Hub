import 'package:flutter/material.dart';
import 'onboarding_page_view.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingPageView(),
      ],
    );
  }
}
