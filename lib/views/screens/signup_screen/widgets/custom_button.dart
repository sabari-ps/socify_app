import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';

SizedBox customButton(
  BuildContext context, {
  required String text,
  required IconData icon,
  required Function() onClick,
}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    child: ElevatedButton.icon(
      onPressed: onClick,
      icon: Icon(
        icon,
      ),
      label: Text(
        text,
        style: AppTextTheme.textButtonTheme,
      ),
      style: ElevatedButton.styleFrom(
        primary: AppColorTheme.kDarkBlueColor,
      ),
    ),
  );
}
