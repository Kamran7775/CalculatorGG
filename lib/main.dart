import 'package:calculator/screen/splash_screen_page_view.dart';
import 'package:calculator/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const CalculateApp());
}

class CalculateApp extends StatelessWidget {
  const CalculateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Calculator',
              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.primaryColor,
              ),
              home: const SplashScreen(),
            ),
        designSize: const Size(375, 812));
  }
}
