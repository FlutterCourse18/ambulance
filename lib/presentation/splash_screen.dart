// ignore_for_file: avoid_print

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
    print('isFirstEnter: $isFirstEnter');
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );
    if (isFirstEnter) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInScreen(),
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
