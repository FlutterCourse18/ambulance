import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/common_widgets/search_textfield.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_category_list.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctors_list.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/favorite_doctors_list.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteDoctors extends StatefulWidget {
  const FavoriteDoctors({super.key});

  @override
  State<FavoriteDoctors> createState() => _FavoriteDoctorsState();
}

class _FavoriteDoctorsState extends State<FavoriteDoctors> {
  String selectedCategory = 'Все';
  final List<DoctorsModel> doctorsModel = DoctorsData.doctors;

  void updateSelectedCategory(String category) {
    selectedCategory = category;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        shadowColor: Colors.transparent,
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
          FavoriteDoctorsList(selectedCategory: selectedCategory)
        ],
      ),
    );
  }
}
