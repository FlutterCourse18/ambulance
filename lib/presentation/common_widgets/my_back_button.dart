import 'package:ambulance/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.blueLink,
      ),
    );
  }
}
