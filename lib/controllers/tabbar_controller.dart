import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socify_app/views/screens/home_screen/tabs/feeds_tab/feeds_tab.dart';
import 'package:socify_app/views/screens/home_screen/tabs/notifications_tab.dart';
import 'package:socify_app/views/screens/home_screen/tabs/profile_tab.dart';
import 'package:socify_app/views/screens/home_screen/tabs/search_tab.dart';

class TabBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<IconData> navIcons = [
    Icons.home,
    Icons.message,
    Icons.notifications,
    Icons.person,
  ];
  List<Widget> navScreens = const [
    FeedsTab(),
    MessagesTab(),
    NotificationsTab(),
    ProfileTab(),
  ];
}
