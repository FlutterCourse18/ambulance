import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  List<String> doctors = [for (int i = 0; i < 10; i++) 'doctor $i'];
  String selectedElement = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('doctors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: doctors.length,
                itemBuilder: (context, index) => DoctorCotegoryWidget(
                  onTap: () {
                    selectedElement = doctors[index];
                    setState(() {});
                  },
                  isSelected: selectedElement == doctors[index],
                  title: doctors[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DoctorCotegoryWidget extends StatelessWidget {
  const DoctorCotegoryWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});
  final String title;

  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 110.w,
          height: 34.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: ShapeDecoration(
            color: isSelected ? AppColors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.w, color: AppColors.gray75),
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: !isSelected ? Color(0xFF757575) : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
