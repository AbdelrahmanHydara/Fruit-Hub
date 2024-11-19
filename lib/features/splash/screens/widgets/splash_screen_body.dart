import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/constants.dart';
import 'package:fruits_app/core/routing/routes.dart';
import 'package:fruits_app/core/services/shared_pref_singleton.dart';

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
          mainAxisAlignment: MainAxisAlignment.end,
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
    bool isOnBoarding = SharedPrefSingleton.getBool(isOnBoardingSeen);

    Future.delayed( const Duration(seconds: 4), () {
      if(isOnBoarding) {
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
      } else {
        Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
      }
    }
    );
  }
}
