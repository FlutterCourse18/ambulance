import 'dart:io';

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CircleAvatarPicker extends StatefulWidget {
  const CircleAvatarPicker({
    super.key,
  });

  @override
  State<CircleAvatarPicker> createState() => _CircleAvatarPickerState();
}

class _CircleAvatarPickerState extends State<CircleAvatarPicker> {
  getImage() async {
    bool? isCamera = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceBetween,
        content: const Text('Choose image source'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text("Camera"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("gallery "),
          ),
        ],
      ),
    );

    if (isCamera == null) return;

    file = await ImagePicker()
        .pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery);
    setState(() {});
  }

  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: file != null ? FileImage(File(file!.path)) : null,
          backgroundColor: AppColors.blueAvatar,
          radius: 50.r,
          child: file != null
              ? const SizedBox.shrink()
              : Text(
                  'АА',
                  textAlign: TextAlign.center,
                  style: AppFonts.s40w500.copyWith(color: AppColors.white),
                ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: InkWell(
            onTap: getImage,
            child: CircleAvatar(
              backgroundColor: AppColors.blue,
              radius: 16.r,
              child: const Icon(
                Icons.camera_alt,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
