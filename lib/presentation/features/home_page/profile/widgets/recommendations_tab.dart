// ignore_for_file: use_build_context_synchronously
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationsTab extends StatelessWidget {
  const RecommendationsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.curlPage,
            width: 105.w,
            height: 105.h,
          ),
          addVerticalSpace(23),
          Text(
            'У вас пока нет добавленных диагнозов',
            style: AppFonts.s15w500,
            textAlign: TextAlign.center,
          ),
          addVerticalSpace(33),
        ],
      ),
    );
  }
}
