import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/controllers/tabbar_controller.dart';

homeBottomBar({
  required TabBarController ctrl,
}) =>
    AnimatedBottomNavigationBar(
      icons: ctrl.navIcons,
      activeIndex: ctrl.currentIndex.value,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      splashSpeedInMilliseconds: 250,
      onTap: (newIndex) {
        ctrl.currentIndex.value = newIndex;
      },
      activeColor: AppColorTheme.kMagentaColor,
      backgroundColor: Colors.white,
      iconSize: 24.0,
      inactiveColor: Colors.grey,
    );
