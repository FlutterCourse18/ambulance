// ignore_for_file: avoid_print, use_build_context_synchronously

import 'dart:math';

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/app_button.dart';
import 'package:ambulance/presentation/features/authtorization/screens/confirm_screen.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PhoneForm extends StatefulWidget {
  const PhoneForm({super.key});

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  String? _errorText;

  var maskFormatter = MaskTextInputFormatter(
    mask: '# (###) ##-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^0 \(\d{3}\) \d{2}-\d{2}-\d{2}$').hasMatch(phoneNumber);
  }

  void _validatePhone(String value) {
    setState(() {
      final input = _phoneController.value.text;
      if (input.isEmpty) {
        _errorText = 'Поле не может быть пустым';
      } else if (!isPhoneNumberValid(value)) {
        _errorText = 'Введите действительный номер телефона';
      } else {
        _errorText = null;
      }
    });
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConsts.phoneNumber, _phoneController.text);
      // final String? action = prefs.getString(AppConsts.phoneNumber);
      // print(action);
      final String code = (Random().nextInt(8999) + 1000).toString();
      await prefs.setString(AppConsts.confirmCode, code);
      // final String? genCode = prefs.getString(AppConsts.confirmCode);
      // print(genCode);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(code)));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NumberConfirmScreen(),
        ),
      );
      setState(() {
        _phoneController.text = '';
      });
    }
  }

  void onFieldSubmitted(String text) async {
    if (_formKey.currentState!.validate()) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConsts.phoneNumber, _phoneController.text);
      final String? action = prefs.getString(AppConsts.phoneNumber);
      print(action);
      final String code = (Random().nextInt(8999) + 1000).toString();
      await prefs.setString(AppConsts.confirmCode, code);
      final String? genCode = prefs.getString(AppConsts.confirmCode);
      print(genCode);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(code)));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NumberConfirmScreen(),
        ),
      );
      setState(() {
        _phoneController.text = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Номер телефона',
              style: AppFonts.s15w400,
            ),
            TextFormField(
              inputFormatters: [maskFormatter],
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              validator: (value) => _errorText,
              onChanged: _validatePhone,
              onFieldSubmitted: onFieldSubmitted,
              maxLength: 16,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                counterText: '',
                hintText: '0 (_ _ _) _ _-_ _-_ _',
                errorText: _errorText,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.w,
                    color: AppColors.black3,
                  ),
                ),
              ),
            ),
            addVerticalSpace(30),
            Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: AppFonts.s15w400,
            ),
            addVerticalSpace(108),
            AppButton(
              title: 'Далее',
              onPressed: _phoneController.text.isNotEmpty ? _submitForm : null,
            )
          ],
        ),
      ),
    );
  }
}
