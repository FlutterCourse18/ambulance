// ignore_for_file: avoid_print

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/common_widgets/app_button.dart';
import 'package:ambulance/presentation/common_widgets/my_back_button.dart';
import 'package:ambulance/presentation/common_widgets/rating_bar.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_datail_tabs.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsDetail extends StatefulWidget {
  const DoctorsDetail({super.key, required this.doctorsModel});
  final DoctorsModel doctorsModel;

  @override
  State<DoctorsDetail> createState() => _DoctorsDetailState();
}

class _DoctorsDetailState extends State<DoctorsDetail> {
  // TODO: how to speed up the animation
  bool showPersistBoutton = true;

  void isPersistBoutton(int index) {
    print(index);
    if (index == 2) {
      showPersistBoutton = !showPersistBoutton;
    } else {
      showPersistBoutton = true;
    }
    print(showPersistBoutton);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: showPersistBoutton
          ? [
              AppButton(
                title: 'Записаться на прием',
                onPressed: () {},
              )
            ]
          : null,
      appBar: AppBar(
        leading: const MyBackButton(),
        actions: [
          InkWell(
            onTap: () {
              widget.doctorsModel.isFavorite = !widget.doctorsModel.isFavorite!;
              print(widget.doctorsModel.isFavorite);
              setState(() {});
            },
            child: SvgPicture.asset(
              AppSvg.favorite,
              // ignore: deprecated_member_use
              color: widget.doctorsModel.isFavorite ?? false
                  ? AppColors.blue
                  : AppColors.grayAF,
            ),
          ),
          addHorizontalSpace(16)
        ],
        title: Text(
          widget.doctorsModel.name ?? '',
          style: AppFonts.s17w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('${widget.doctorsModel.image}'),
                radius: 50.r,
              ),
              addVerticalSpace(16),
              Text(
                "${widget.doctorsModel.name}",
                style: AppFonts.s22w500,
              ),
              addVerticalSpace(8),
              Text(
                "${widget.doctorsModel.categories}",
                style: AppFonts.s18w400,
              ),
              addVerticalSpace(20),
              MyRaingBar(doctorsModel: widget.doctorsModel),
              DoctorDatailTabs(
                doctorsModel: widget.doctorsModel,
                isPersistBoutton: isPersistBoutton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
