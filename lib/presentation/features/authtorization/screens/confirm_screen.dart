// ignore_for_file: use_build_context_synchronously

import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/my_back_button.dart';
import 'package:ambulance/presentation/features/authtorization/widgets/confirm_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberConfirmScreen extends StatefulWidget {
  const NumberConfirmScreen({super.key});

  @override
  State<NumberConfirmScreen> createState() => _NumberConfirmScreenState();
}

class _NumberConfirmScreenState extends State<NumberConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MyBackButton(),
        centerTitle: true,
        title: Text(
          'Подтверждение номера',
          style: AppFonts.s17w600,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 40.w),
        child: Center(
          child: Column(
            children: [
              Text(
                'Введите код из смс',
                style: AppFonts.s22w500,
              ),
              SizedBox(
                height: 130.h,
              ),
              const ConfirmForm(),
            ],
          ),
        ),
      ),
    );
  }
}
