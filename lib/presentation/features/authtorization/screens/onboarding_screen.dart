import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/app_bottun.dart';
import 'package:ambulance/presentation/features/authtorization/screens/login_screen.dart';
import 'package:ambulance/presentation/features/authtorization/widgets/onboarding_item_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(AppConsts.isFirstEnter, false);

                // ignore: use_build_context_synchronously
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
