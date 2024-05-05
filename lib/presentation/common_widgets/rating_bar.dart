import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRaingBar extends StatelessWidget {
  const MyRaingBar({
    super.key,
    required this.doctorsModel,
  });

  final DoctorsModel doctorsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: doctorsModel.grade ?? 0,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          ignoreGestures: true,
          itemPadding: const EdgeInsets.symmetric(horizontal: 6.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            size: 24,
            color: AppColors.orangeRate,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        addHorizontalSpace(20),
        Text(
          '${doctorsModel.grade}',
          style: AppFonts.s18w400.copyWith(color: AppColors.grayAF),
        )
      ],
    );
  }
}
