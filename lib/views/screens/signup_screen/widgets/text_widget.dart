import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';

Text customTitleWidget({
  required String text,
  required bool isTitle,
}) {
  return Text(
    text,
    style:
        isTitle ? AppTextTheme.titleTextTheme : AppTextTheme.subTitleTextTheme,
    textAlign: TextAlign.center,
  );
}
