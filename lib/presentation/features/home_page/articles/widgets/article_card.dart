import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.articleData});

  final ArticleModel articleData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: AppColors.white),
      height: 97.h,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    '${articleData.title}',
                    style: AppFonts.s17w500,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      Text('${articleData.date}', style: AppFonts.s15w300),
                    ],
                  )
                ],
              ),
            ),
            addHorizontalSpace(10),
            Container(
              width: 76,
              height: 76,
              color: AppColors.grayBackground,
              child: Image.network(
                articleData.image ?? '',
                width: 76,
                height: 76,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
