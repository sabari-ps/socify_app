import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';

import 'package:socify_app/views/screens/signup_screen/controller/signup_controller.dart';

class CustomTextField extends StatelessWidget {
  final SignUpController signUpController;
  const CustomTextField({
    Key? key,
    required this.signUpController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (signUpController.stepsCompleted.value == 1) {
      final usernameCtrl = TextEditingController();
      return TextFormField(
        controller: usernameCtrl,
        autofocus: false,
        decoration: InputDecoration(
          hintText: "Choose a username",
          hintStyle: AppTextTheme.labelTheme,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: AppColorTheme.kLightBlueColor,
              width: 4.0,
            ),
          ),
        ),
      );
    } else if (signUpController.stepsCompleted.value == 2) {
      final emailCtrl = TextEditingController();
      return TextFormField(
        controller: emailCtrl,
        decoration: InputDecoration(
          hintText: "Email Address",
          hintStyle: AppTextTheme.labelTheme,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: AppColorTheme.kLightBlueColor,
              width: 4.0,
            ),
          ),
        ),
      );
    } else {
      final passwordCtrl = TextEditingController();
      return TextFormField(
        controller: passwordCtrl,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Enter a Password",
          hintStyle: AppTextTheme.labelTheme,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: AppColorTheme.kLightBlueColor,
              width: 4.0,
            ),
          ),
        ),
      );
    }
  }
}
