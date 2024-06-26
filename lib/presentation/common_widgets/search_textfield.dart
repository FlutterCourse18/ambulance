// ignore_for_file: avoid_print

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  TextEditingController searchController = TextEditingController();

  void onSubmitted(value) {
    print('value: $value');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: searchController,
        onSubmitted: onSubmitted,
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(16.r),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(16.r),
          ),
          filled: true,
          fillColor: AppColors.grayC4.withOpacity(0.3),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          suffix: InkWell(
            child: const Text('Очистить'),
            onTap: () {
              searchController.clear();
              print(searchController.text);
            },
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Поиск врача',
        ),
      ),
    );
  }
}
