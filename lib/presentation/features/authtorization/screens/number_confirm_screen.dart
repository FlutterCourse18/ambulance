// ignore_for_file: use_build_context_synchronously

import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/authtorization/widgets/code_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        leading: IconButton(
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.remove(AppConsts.confirmCode);
            await prefs.remove(AppConsts.phoneNumber);
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
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
              const CodeTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
