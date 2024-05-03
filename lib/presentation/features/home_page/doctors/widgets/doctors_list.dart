import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_card.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctors_sort_button.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatefulWidget {
  const DoctorsList({super.key, required this.selectedCategory});

  final String selectedCategory;

  @override
  State<DoctorsList> createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  final List<DoctorsModel> _doctors = DoctorsData.doctors;
  bool _sortAscending = true;
  List<DoctorsModel> get sortedDoctors {
    if (_sortAscending) {
      return _doctors.toList()..sort((a, b) => a.name!.compareTo(b.name!));
    } else {
      return _doctors.toList()..sort((a, b) => b.name!.compareTo(a.name!));
    }
  }

  List<DoctorsModel> get filteredDoctors {
    if (widget.selectedCategory == 'Все') {
      return sortedDoctors;
    } else {
      return sortedDoctors
          .where((doctor) => doctor.categories == widget.selectedCategory)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSortButton(
            sortAscending: _sortAscending,
            onChangeSort: (bool sortAscending) {
              _sortAscending = sortAscending;
              setState(() {});
            },
          ),
          Expanded(
            child: Container(
              color: AppColors.grayBackground,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.separated(
                  itemBuilder: (contex, index) =>
                      DoctorCard(model: filteredDoctors[index]),
                  separatorBuilder: (context, index) => addVerticalSpace(8),
                  itemCount: filteredDoctors.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
