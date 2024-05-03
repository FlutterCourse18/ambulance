import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/authtorization/screens/login_screen.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/circle_avatar_picker.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/profile_data.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/profile_tabs.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<dynamic> showSignout() {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        // actionsAlignment: MainAxisAlignment.spaceBetween,
        title: const Text('Sign Out of App?'),
        content: const Text('Are you sure that you would like to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.remove(AppConsts.userName);
              await prefs.remove(AppConsts.userSurname);
              await prefs.remove(AppConsts.phoneNumber);
              // ignore: use_build_context_synchronously
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LogInScreen()),
              );
            },
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        shadowColor: Colors.transparent,
        title: Text(
          'Мой профиль',
          style: AppFonts.s34w700,
        ),
        centerTitle: false,
        actions: [
          InkWell(
            onTap: showSignout,
            child: const Icon(
              Icons.logout,
              color: AppColors.black,
            ),
          ),
          addHorizontalSpace(16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
        child: Center(
          child: Column(
            children: [
              const CircleAvatarPicker(),
              const ProfileData(),
              addVerticalSpace(13),
              const ProfileTabsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
