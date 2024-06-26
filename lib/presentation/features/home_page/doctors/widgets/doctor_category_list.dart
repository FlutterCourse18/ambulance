import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_cotegory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsCategoryList extends StatefulWidget {
  final Function(String) onSelectCategory;
  const DoctorsCategoryList({super.key, required this.onSelectCategory});

  @override
  State<DoctorsCategoryList> createState() => _DoctorsCategoryListState();
}

class _DoctorsCategoryListState extends State<DoctorsCategoryList> {
  String _selectedCategory = 'Все';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: SizedBox(
        height: 35.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: DoctorsData.categories.length,
          itemBuilder: (context, index) => DoctorCotegoryWidget(
            onTap: () {
              _selectedCategory = DoctorsData.categories[index];
              widget.onSelectCategory(_selectedCategory);
              setState(() {});
            },
            isSelected: _selectedCategory == DoctorsData.categories[index],
            title: DoctorsData.categories[index],
          ),
        ),
      ),
    );
  }
}
