import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/routing/my_router.dart';
import 'package:fruits_app/core/routing/routes.dart';

class FruitsApp extends StatelessWidget {

  const FruitsApp({super.key,});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: MyRouter.generateRoute,
        // themeMode: ThemeMode.system,
        // theme: MyTheme.darkTheme,
      ),
    );
  }
}