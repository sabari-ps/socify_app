import 'dart:async';
import 'package:get/get.dart';
import 'package:socify_app/main.dart';

class RoutesControllerClass extends GetxController {
  void openSplash() => Timer(
        const Duration(milliseconds: 3000),
        (storageCtrl.storage.read('initialRun') ?? true)
            ? () => Get.offNamed('/intro')
            : (storageCtrl.storage.read('loggedIn') ?? false)
                ? () => Get.offNamed('/home')
                : () => Get.offNamed('/welcome'),
      );
  gotoScreen({
    required String toScreen,
    required bool isBackable,
    int? duration,
  }) =>
      (isBackable)
          ? () => Get.toNamed(toScreen)
          : () => Get.offAllNamed(toScreen);
}
