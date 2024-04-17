// ignore_for_file: avoid_print

import 'dart:math';

import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/common_widgets/app_bottun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController(text: '');
  final int _code = Random().nextInt(8999) + 1000;
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
    final input = _phoneController.value.text;
    if (input.length <= 1) {
      setState(() {
        _errorText = 'Поле не может быть пустым';
      });
    } else if (!isPhoneNumberValid(value)) {
      setState(() {
        _errorText = 'Введите действительный номер телефона';
      });
    } else {
      setState(() {
        _errorText = null;
      });
    }
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      print('tel: ${_phoneController.text}');
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('tel', _phoneController.text);
      final String? action = prefs.getString('tel');
      print(action);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('$_code')));
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
              maxLength: 16,
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
            SizedBox(
              height: 30.h,
            ),
            Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: AppFonts.s15w400,
            ),
            SizedBox(
              height: 108.h,
            ),
            AppButton(
              title: 'Далее',
              onPressed: _phoneController.text.length > 1 ? _submitForm : null,
            )
          ],
        ),
      ),
    );
  }
}
