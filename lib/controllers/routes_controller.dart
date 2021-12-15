import 'dart:async';
import 'package:get/get.dart';
import 'package:socify_app/main.dart';

class RoutesControllerClass extends GetxController {
  void openSplash() => Timer(
        const Duration(milliseconds: 3000),
        (storageCtrl.storage.read('initialRun') ?? true)
            ? () => Get.offNamed('/intro')
            : () => Get.offNamed('/welcome'),
      );
  gotoScreen({
    required String toScreen,
    required bool isBackable,
    required bool isTimeout,
    int? duration,
  }) =>
      (isTimeout)
          ? (isBackable)
              ? Timer(Duration(milliseconds: duration!),
                  () => Get.toNamed(toScreen))
              : Timer(Duration(milliseconds: duration!),
                  () => Get.offNamed(toScreen))
          : (isBackable)
              ? () => Get.toNamed(toScreen)
              : () => Get.offAllNamed(toScreen);
}
