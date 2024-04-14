import 'package:flutter/material.dart';
import 'package:lesson_6/presentation/features/authtorization/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void routing() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnBoardingScreen(),
      ),
    );
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
