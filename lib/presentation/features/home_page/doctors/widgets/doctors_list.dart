import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsList extends StatefulWidget {
  const DoctorsList({super.key});

  @override
  State<DoctorsList> createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  List<DoctorsModel> doctorsList = DoctorsData.doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.grayBackground,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            itemBuilder: (contex, index) =>
                DoctorCard(model: doctorsList[index]),
            separatorBuilder: (context, index) => SizedBox(
              height: 8.h,
            ),
            itemCount: doctorsList.length,
          ),
        ),
      ),
    );
  }
}
