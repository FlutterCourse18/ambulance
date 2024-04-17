import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'SF Pro Display',
              appBarTheme: AppBarTheme(
                elevation: 0.7.h,
                shadowColor: AppColors.black.withOpacity(0.30),
                backgroundColor: AppColors.white,
              ),
              scaffoldBackgroundColor: AppColors.white,
            ),
            home: const SplashScreen(),
          );
        });
  }
}
