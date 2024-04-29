import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/presentation/common_widgets/search_textfield.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
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
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvg.bell),
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchTextField(),
            SizedBox(height: 20.h),
            const DoctorsCategoryList(),
          ],
        ),
      ),
    );
  }
}
