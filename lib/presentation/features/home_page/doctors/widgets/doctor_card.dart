import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.model, required this.onTap});

  final DoctorsModel model;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
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
            addHorizontalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.categories ?? '',
                  style: AppFonts.s15w400.copyWith(color: AppColors.gray75),
                ),
                addVerticalSpace(6),
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
            addHorizontalSpace(24),
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
      ),
    );
  }
}
