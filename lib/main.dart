import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_6/core/colors/app_colors.dart';
import 'package:lesson_6/presentation/features/authtorization/screens/onboarding_screen.dart';

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
            home: const OnBoardingScreen(),
          );
        });
  }
}
