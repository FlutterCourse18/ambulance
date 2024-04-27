import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/circle_avatar_picker.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/profile_data.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/profile_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        title: Text(
          'Мой профиль',
          style: AppFonts.s34w700,
        ),
        centerTitle: false,
        actions: [
          const Icon(
            Icons.settings,
            color: AppColors.black,
          ),
          SizedBox(width: 16.w)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
        child: Center(
          child: Column(
            children: [
              const CircleAvatarPicker(),
              const ProfileData(),
              SizedBox(height: 13.h),
              const ProfileTabsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
