// ignore_for_file: must_be_immutable

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSortButton extends StatefulWidget {
  DoctorsSortButton({
    super.key,
    required this.sortAscending,
    required this.onChangeSort,
  });
  bool sortAscending;
  final Function(bool) onChangeSort;
  @override
  State<DoctorsSortButton> createState() => _DoctorsSortButtonState();
}

class _DoctorsSortButtonState extends State<DoctorsSortButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                widget.onChangeSort(
                  widget.sortAscending = !widget.sortAscending,
                );
                setState(() {});
              },
              child: Row(
                children: [
                  SvgPicture.asset(AppSvg.sort),
                  addHorizontalSpace(4),
                  Text("Сортировка: ", style: AppFonts.s14w600),
                ],
              )),
          addHorizontalSpace(6),
          Text(widget.sortAscending ? "имя А-Я" : "имя Я-А",
              style: AppFonts.s14w600.copyWith(color: AppColors.blueLink))
        ],
      ),
    );
  }
}
