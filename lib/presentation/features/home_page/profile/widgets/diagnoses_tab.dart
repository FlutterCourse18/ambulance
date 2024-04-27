// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiagnosesTab extends StatelessWidget {
  const DiagnosesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    File? selectedFile;
    Future<void> pickFiles(BuildContext context) async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        selectedFile = File(result.files.single.path!);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('empty'),
          ),
        );
      }
      print(selectedFile);
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.folder,
            width: 105.w,
            height: 105.h,
          ),
          SizedBox(
            height: 23.h,
          ),
          Text(
            'У вас пока нет добавленных диагнозов',
            style: AppFonts.s15w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 33.h,
          ),
          TextButton(
            onPressed: () {
              pickFiles(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppSvg.bookAdd),
                SizedBox(width: 8.w),
                Text(
                  "Добавить документ",
                  style: AppFonts.s15w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
