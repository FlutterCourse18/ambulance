import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCotegoryWidget extends StatelessWidget {
  const DoctorCotegoryWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});
  final String title;

  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 34.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0.h),
          decoration: ShapeDecoration(
            color: isSelected ? AppColors.blue : AppColors.white,
            shape: RoundedRectangleBorder(
              side: isSelected
                  ? BorderSide(width: 0.w, color: Colors.transparent)
                  : BorderSide(width: 1.w, color: AppColors.gray75),
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: AppFonts.s15w600.copyWith(
                color: !isSelected ? AppColors.gray75 : AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
