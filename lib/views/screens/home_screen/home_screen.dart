import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:socify_app/controllers/tabbar_controller.dart';
import 'package:socify_app/views/screens/home_screen/widgets/home_appbar.dart';
import 'package:socify_app/views/screens/home_screen/widgets/home_bottombar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabCtrl = Get.put(TabBarController());
    return Scaffold(
      appBar: homeAppBar(),
      body: Obx(
        () => tabCtrl.navScreens[tabCtrl.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => homeBottomBar(
          ctrl: tabCtrl,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
