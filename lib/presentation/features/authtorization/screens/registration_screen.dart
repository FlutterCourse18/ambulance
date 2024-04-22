import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/authtorization/screens/login_screen.dart';
import 'package:ambulance/presentation/features/authtorization/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  void backToLogIn() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LogInScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: AppColors.black.withOpacity(
              0.54,
            ),
          ),
          onPressed: backToLogIn,
        ),
        centerTitle: true,
        title: Text(
          'Создание профиля',
          style: AppFonts.s17w600,
        ),
      ),
      body: const RegistrationForm(),
    );
  }
}
