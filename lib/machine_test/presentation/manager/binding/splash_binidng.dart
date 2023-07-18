import 'package:datahub_machine_test/machine_test/injector.dart';
import 'package:datahub_machine_test/machine_test/presentation/manager/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(getIt()));
  }
}
