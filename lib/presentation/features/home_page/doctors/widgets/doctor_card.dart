import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.model});

  final DoctorsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: [
          const CircleAvatar(
            radius: 27.0,
            backgroundImage: AssetImage(AppImages.chopper),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.categories ?? '',
                style: AppFonts.s15w400.copyWith(color: AppColors.gray75),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                model.name ?? '',
                style: AppFonts.s15w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppSvg.star),
              Text(
                model.grade.toString(),
                style: AppFonts.s15w400.copyWith(
                  color: AppColors.gray75,
                ),
              )
            ],
          ),
          SizedBox(width: 24.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppSvg.comentary),
              Text(
                model.comments!.length.toString(),
                style: AppFonts.s15w400.copyWith(
                  color: AppColors.gray75,
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
