import 'package:flutter/material.dart';
import 'widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: OnboardingScreenBody(),
    );
  }
}
