import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';

class IntroPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const IntroPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.7,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextTheme.titleTextTheme,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextTheme.subTitleTextTheme,
          ),
        ],
      ),
    );
  }
}
