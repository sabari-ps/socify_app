import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/main.dart';
import 'package:socify_app/views/screens/intro_screen/controller/pageview_controller.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageCtrl = Get.put(PageViewControllerClass());

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Obx(
        () => SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    storageCtrl.storage.write('initialRun', false);
                    routesCtrl.gotoScreen(
                      toScreen: '/welcome',
                      isBackable: false,
                      isTimeout: false,
                    );
                  },
                  child: Text(
                    "Skip",
                    textAlign: TextAlign.end,
                    style: AppTextTheme.textButtonTheme,
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  scrollBehavior: const MaterialScrollBehavior(),
                  controller: pageCtrl.pageController,
                  itemCount: pageCtrl.introPages.length,
                  itemBuilder: (context, index) {
                    return pageCtrl.introPages[index];
                  },
                  onPageChanged: (val) => pageCtrl.currentIndex.value = val,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    pageCtrl.introPages.length,
                    (index) => pageCtrl.buildDot(index, context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
