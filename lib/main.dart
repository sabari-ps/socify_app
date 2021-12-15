import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socify_app/configs/app_routes.dart';
import 'package:socify_app/controllers/routes_controller.dart';
import 'package:socify_app/controllers/storage_controller.dart';
import 'package:socify_app/views/screens/splash_screen/splash_screen.dart';

final routesCtrl = Get.put(RoutesControllerClass());
final storageCtrl = Get.put(LocalStorageControllerClass());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await storageCtrl.initGetStorage();
  routesCtrl.openSplash();
  runApp(const SocifyApp());
}

class SocifyApp extends StatelessWidget {
  const SocifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Socify! App",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito',
      ),
      initialRoute: '/splash',
      getPages: appRoutes,
      home: const SplashScreen(),
    );
  }
}
