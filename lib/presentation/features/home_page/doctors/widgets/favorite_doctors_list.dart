import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/features/home_page/doctors/screens/doctors_details_screen.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctor_card.dart';
import 'package:ambulance/presentation/features/home_page/doctors/widgets/doctors_sort_button.dart';
import 'package:flutter/material.dart';

class FavoriteDoctorsList extends StatefulWidget {
  const FavoriteDoctorsList({
    super.key,
    required this.selectedCategory,
  });

  final String selectedCategory;
  @override
  State<FavoriteDoctorsList> createState() => _FavoriteDoctorsListState();
}

class _FavoriteDoctorsListState extends State<FavoriteDoctorsList> {
  List<DoctorsModel> doctors =
      DoctorsData.doctors.where((doctor) => doctor.isFavorite == true).toList();
  bool _sortAscending = true;
  List<DoctorsModel> get sortedDoctors {
    if (_sortAscending) {
      return doctors.toList()..sort((a, b) => a.name!.compareTo(b.name!));
    } else {
      return doctors.toList()..sort((a, b) => b.name!.compareTo(a.name!));
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
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: ListView.builder(
                  itemBuilder: (contex, index) => DoctorCard(
                    model: filteredDoctors[index],
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (contex) => DoctorsDetail(
                            doctorsModel: filteredDoctors[index],
                          ),
                        ),
                      );
                    },
                  ),
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
