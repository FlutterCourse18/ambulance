import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileData extends StatefulWidget {
  const ProfileData({super.key});

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  String? userName;
  String? userSurname;
  String? userphoneNumber;
  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString(AppConsts.userName);
      userSurname = prefs.getString(AppConsts.userSurname);
      userphoneNumber = prefs.getString(AppConsts.phoneNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(16),
        Text(
          '$userName $userSurname',
          style: AppFonts.s22w500,
        ),
        Text(
          '$userphoneNumber',
          style: AppFonts.s18w400,
        ),
      ],
    );
  }
}
