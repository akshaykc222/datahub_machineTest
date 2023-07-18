import 'package:datahub_machine_test/machine_test/injector.dart';
import 'package:datahub_machine_test/machine_test/presentation/manager/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(getIt()));
  }
}
