import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/circle_avatar_picker.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/profile_data.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 16.w),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Мой профиль',
                    style: AppFonts.s34w700,
                  ),
                  const Icon(Icons.settings),
                ],
              ),
              SizedBox(height: 32.h),
              const CircleAvatarPicker(),
              const ProfileData(),
            ],
          ),
        ),
      ),
    );
  }
}
