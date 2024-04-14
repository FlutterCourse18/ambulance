import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_6/core/fonts/app_fonts.dart';
import 'package:lesson_6/core/images/app_images.dart';

class OnBoardingItemWidget extends StatelessWidget {
  const OnBoardingItemWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.h),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 32.h,
          ),
          SizedBox(
            width: 18.w,
          ),
          Flexible(
            child: Text(
              text,
              style: AppFonts.s15w400,
            ),
          )
        ],
      ),
    );
  }
}

class OnBoardingItemModel {
  final String icon;
  final String text;
  OnBoardingItemModel({required this.icon, required this.text});
}

abstract class OnBoardingItemData {
  static List<OnBoardingItemModel> data = [
    OnBoardingItemModel(
        icon: AppImages.hospital,
        text: 'Записывайтесь на прием к самым лучшим специалистам'),
    OnBoardingItemModel(
        icon: AppImages.clipboard,
        text:
            'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку'),
    OnBoardingItemModel(
        icon: AppImages.speech,
        text:
            'Просматривайте отзывы о врачах и дополняйте собственными комментариями'),
    OnBoardingItemModel(
        icon: AppImages.bell,
        text: 'Получайте уведомления о приеме или о поступивших сообщениях')
  ];
}
