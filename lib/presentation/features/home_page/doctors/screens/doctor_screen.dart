import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/presentation/common_widgets/search_textfield.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_category_list.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctors_list.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  String selectedCategory = 'Все';

  void updateSelectedCategory(String category) {
    selectedCategory = category;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        title: Text(
          'Доктора',
          style: AppFonts.s34w700,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: SvgPicture.asset(AppSvg.bell),
          ),
          addHorizontalSpace(8),
        ],
      ),
      body: Column(
        children: [
          const SearchTextField(),
          DoctorsCategoryList(onSelectCategory: updateSelectedCategory),
          DoctorsList(selectedCategory: selectedCategory)
        ],
      ),
    );
  }
}
