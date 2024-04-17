import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ambulance/core/colors/app_colors.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close,
        color: AppColors.black.withOpacity(
          0.54,
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Вы точно хотите выйти?'),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: AppColors.red,
                ),
              ),
              IconButton(
                onPressed: () {
                  exit(0);
                },
                icon: const Icon(
                  Icons.check,
                  color: AppColors.green,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
