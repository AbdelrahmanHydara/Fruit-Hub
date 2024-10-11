import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/routing/routes.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {

  @override
  void initState() {
    executeNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/svg/plant.svg"),
          ],
        ),
        SvgPicture.asset("assets/svg/logo.svg"),
        SvgPicture.asset(
          "assets/svg/splash_bottom.svg",
          fit: BoxFit.fill ,
        ),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed( const Duration(seconds: 4), ()
    {
      Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
    }
    );
  }
}
