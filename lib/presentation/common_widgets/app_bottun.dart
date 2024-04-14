
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_6/core/colors/app_colors.dart';
import 'package:lesson_6/core/fonts/app_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 54.h,
        width: 296.w,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: AppFonts.s18w600.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
