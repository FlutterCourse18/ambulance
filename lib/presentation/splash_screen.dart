// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:ambulance/presentation/features/home_page/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/presentation/features/authtorization/screens/login_screen.dart';
import 'package:ambulance/presentation/features/authtorization/screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void routing() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isFirstEnter = prefs.getBool(AppConsts.isFirstEnter) ?? true;
    bool isRegistered = false;
    print('isFirstEnter: $isFirstEnter');
    final String userName = prefs.getString(AppConsts.userName) ?? '';
    final String userSurname = prefs.getString(AppConsts.userSurname) ?? '';
    final String phoneNumber = prefs.getString(AppConsts.phoneNumber) ?? '';
    if (userName.isNotEmpty & userSurname.isNotEmpty & phoneNumber.isNotEmpty) {
      isRegistered = true;
    } else {
      isRegistered = false;
    }
    print('isRegistered: $isRegistered');
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );
    if (isFirstEnter) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ),
      );
    } else if (!isRegistered) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeHage(),
        ),
      );
    }
  }

  @override
  void initState() {
    routing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
