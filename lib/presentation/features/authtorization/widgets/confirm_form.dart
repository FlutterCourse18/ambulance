// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:math';

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/app_button.dart';
import 'package:ambulance/presentation/features/authtorization/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmForm extends StatefulWidget {
  const ConfirmForm({
    super.key,
  });

  @override
  State<ConfirmForm> createState() => _ConfirmFormState();
}

class _ConfirmFormState extends State<ConfirmForm> {
  final TextEditingController _codeController = TextEditingController();
  String? _errorText;

  void generateCode() async {
    final String code = (Random().nextInt(8999) + 1000).toString();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConsts.confirmCode, code);
    // final String? genCode = prefs.getString(AppConsts.confirmCode);
    // print(genCode);
    // print(_codeController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(code)));
  }

  void clearTextField() {
    setState(() {
      _codeController.clear();
    });
  }

  void submitForm() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String confirmCode = prefs.getString(AppConsts.confirmCode) ?? '';
    if (_codeController.text == confirmCode) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegistrationScreen(),
        ),
      );
      setState(() {
        _codeController.text = '';
      });
    } else {
      setState(() {
        _errorText = 'неверный код';
      });
    }
  }

  void onSubmitted(String text) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String confirmCode = prefs.getString(AppConsts.confirmCode) ?? '';
    if (_codeController.text == confirmCode) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegistrationScreen(),
        ),
      );
      setState(() {
        _codeController.clear();
      });
    } else {
      setState(() {
        _errorText = 'неверный код';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _codeController,
          keyboardType: TextInputType.number,
          maxLength: 4,
          obscureText: true,
          obscuringCharacter: "*",
          enableSuggestions: false,
          autocorrect: false,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            errorText: _errorText,
            prefixIcon: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 120.w,
              ),
              child: Row(
                children: [
                  Text(
                    'Код',
                    style: AppFonts.s18w600.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            suffixIcon: IconButton(
              onPressed: clearTextField,
              color: AppColors.black,
              icon: SizedBox(
                width: 35.w,
                height: 36.h,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.grayC4,
                      borderRadius: BorderRadius.circular(50.r)),
                  child: const Icon(
                    Icons.close,
                    // weight: 40,
                  ),
                ),
              ),
            ),
            counterText: '',
            hintText: '_ _ _ _',
            // errorText: _errorText,
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.w,
                color: AppColors.black3,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        InkWell(
          onTap: generateCode,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            'Получить код повторно',
            style: AppFonts.s15w400.copyWith(
              color: AppColors.blueLink,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.blueLink,
            ),
          ),
        ),
        SizedBox(
          height: 85.h,
        ),
        AppButton(
          title: 'Далее',
          onPressed: submitForm,
        )
      ],
    );
  }
}
