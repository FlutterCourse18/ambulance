import 'package:ambulance/data/doctors_category_model.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_cotegory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsCategoryList extends StatefulWidget {
  const DoctorsCategoryList({super.key});

  @override
  State<DoctorsCategoryList> createState() => _DoctorsCategoryListState();
}

class _DoctorsCategoryListState extends State<DoctorsCategoryList> {
  String selectedElement = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DoctorsCategoryData.doctors.length,
        itemBuilder: (context, index) => DoctorCotegoryWidget(
          onTap: () {
            selectedElement = DoctorsCategoryData.doctors[index];
            setState(() {});
          },
          isSelected: selectedElement == DoctorsCategoryData.doctors[index],
          title: DoctorsCategoryData.doctors[index],
        ),
      ),
    );
  }
}
