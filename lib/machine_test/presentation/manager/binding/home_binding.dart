// import 'package:datahub_machine_test/machine_test/presentation/manager/controller/final%20homeController.dart';
import 'package:get/get.dart';

import '../controller/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
