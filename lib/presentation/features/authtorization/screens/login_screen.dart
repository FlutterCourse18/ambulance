import 'package:ambulance/presentation/features/authtorization/widgets/phone_form.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/authtorization/widgets/exit_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ExitButton(),
        centerTitle: true,
        title: Text(
          'Вход',
          style: AppFonts.s17w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Войти',
                style: AppFonts.s34w700,
              ),
              addVerticalSpace(50),
              const PhoneForm(),
            ],
          ),
        ),
      ),
    );
  }
}
