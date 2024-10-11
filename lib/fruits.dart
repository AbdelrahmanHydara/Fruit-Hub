import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitsApp extends StatelessWidget {

  const FruitsApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: Routes.onBoardingScreen,
        // onGenerateRoute: MyRouter.generateRoute,
        // themeMode: ThemeMode.system,
        // theme: MyTheme.darkTheme,
      ),
    );
  }
}