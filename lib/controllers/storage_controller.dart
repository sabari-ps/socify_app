import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageControllerClass extends GetxController {
  Future<void> initGetStorage() async => await GetStorage.init();
  final GetStorage storage = GetStorage();
}
