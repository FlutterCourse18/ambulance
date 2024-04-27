// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/app_button.dart';
import 'package:ambulance/presentation/features/home_page/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userSurnameController = TextEditingController();
  String? _errorNameText;
  String? _errorSurnameText;

  bool isDigit(String s) {
    return int.tryParse(s) != null;
  }

  void validateUserName(String value) {
    setState(() {
      if (value.isEmpty) {
        _errorNameText = 'Поле не может быть пустым';
      } else if (value.length < 3) {
        _errorNameText = 'Минимальная длина: 3 символа';
      } else if (isDigit(value[0])) {
        _errorNameText = 'Имя должна начинаться с буквы';
      } else {
        _errorNameText = null;
      }
    });
  }

  void validateUserSurname(String value) {
    setState(() {
      if (value.isEmpty) {
        _errorSurnameText = 'Поле не может быть пустым';
      } else if (value.length < 3) {
        _errorSurnameText = 'Минимальная длина: 3 символа';
      } else if (isDigit(value[0])) {
        _errorSurnameText = 'Фамилия  должна начинаться с буквы';
      } else {
        _errorSurnameText = null;
      }
    });
  }

  void submitForm() async {
    if (_formKey.currentState!.validate()) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConsts.userName, _userNameController.text);
      await prefs.setString(AppConsts.userSurname, _userSurnameController.text);

      final String? name = prefs.getString(AppConsts.userName);
      final String? surname = prefs.getString(AppConsts.userSurname);
      print('user name: $name');
      print('user surname: $surname');
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeHage(),
        ),
        (route) => false,
      );
      setState(() {
        _userNameController.text = '';
        _userSurnameController.text = '';
      });
    }
  }

  void onFieldSubmitted(String text) async {
    if (_formKey.currentState!.validate()) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConsts.userName, _userNameController.text);
      await prefs.setString(AppConsts.userSurname, _userSurnameController.text);

      final String? name = prefs.getString(AppConsts.userName);
      final String? surname = prefs.getString(AppConsts.userSurname);
      print('user name: $name');
      print('user surname: $surname');
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeHage(),
        ),
        (route) => false,
      );
      setState(() {
        _userNameController.text = '';
        _userSurnameController.text = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 34.h, horizontal: 31.w),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Имя',
                style: AppFonts.s15w400,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                controller: _userNameController,
                keyboardType: TextInputType.name,
                validator: (value) => _errorNameText,
                textInputAction: TextInputAction.next,
                onChanged: validateUserName,
                decoration: InputDecoration(
                  hintText: 'Введите ваше имя',
                  errorText: _errorNameText,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.w,
                      color: AppColors.black3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Фамилия',
                style: AppFonts.s15w400,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                controller: _userSurnameController,
                keyboardType: TextInputType.name,
                onChanged: validateUserSurname,
                validator: (value) => _errorSurnameText,
                onFieldSubmitted: onFieldSubmitted,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Введите вашу фамилию',
                  errorText: _errorSurnameText,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.w,
                      color: AppColors.black3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 149.h,
              ),
              // const Spacer(),
              AppButton(
                title: 'Далее',
                onPressed: _userNameController.text.isNotEmpty &
                        _userSurnameController.text.isNotEmpty
                    ? submitForm
                    : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
