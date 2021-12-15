import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socify_app/configs/app_theme.dart';

import '../intro_pages.dart';

class PageViewControllerClass extends GetxController {
  RxInt currentIndex = 0.obs;
  PageController pageController = PageController();

  List<IntroPage> introPages = const [
    IntroPage(
      image: 'assets/images/intro-1.png',
      title: 'Find Friends & Get\nInspiration',
      subTitle: 'Find friends on social platform',
    ),
    IntroPage(
      image: 'assets/images/intro-2.png',
      title: 'Meet Awesome People\n& Enjoy Yourself',
      subTitle: 'Find friends on social platform',
    ),
    IntroPage(
      image: 'assets/images/intro-3.png',
      title: 'Attend Events & Hangout\nWith Friends',
      subTitle: 'Find friends on social platform',
    ),
  ];

  buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex.value == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColorTheme.kDarkBlueColor,
      ),
    );
  }
}
