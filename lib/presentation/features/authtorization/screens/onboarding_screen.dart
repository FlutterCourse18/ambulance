import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_6/core/fonts/app_fonts.dart';
import 'package:lesson_6/presentation/common_widgets/app_bottun.dart';
import 'package:lesson_6/presentation/features/authtorization/widgets/onboarding_item_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Профиль',
          style: AppFonts.s17w600,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Зачем нужен профиль?',
              style: AppFonts.s22w500,
            ),
            SizedBox(
              height: 25.h,
            ),
            Column(
              children: OnBoardingItemData.data
                  .map(
                    (e) => OnBoardingItemWidget(icon: e.icon, text: e.text),
                  )
                  .toList(),
            ),
            AppButton(
              title: 'Войти',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
