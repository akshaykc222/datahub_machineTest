import 'package:datahub_machine_test/machine_test/domain/use_cases/get_login_info.dart';
import 'package:get/get.dart';

import '../../routes/app_pages_names.dart';

class SplashController extends GetxController {
  final GetLoginInfoUseCase getLoginInfoUseCase;

  SplashController(this.getLoginInfoUseCase);

  @override
  void onInit() {
    /// navigating to login page if not logined else will navigate to homescreen
    Future.delayed(const Duration(seconds: 2), () {
      /// checking login status

      if (getLoginInfoUseCase.call()) {
        Get.offAllNamed(AppPages.home);
      } else {
        Get.offAllNamed(AppPages.login);
      }
    });
    super.onInit();
  }
}
