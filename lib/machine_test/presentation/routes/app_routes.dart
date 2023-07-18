import 'package:datahub_machine_test/machine_test/presentation/manager/binding/login_binding.dart';
import 'package:datahub_machine_test/machine_test/presentation/manager/binding/splash_binidng.dart';
import 'package:datahub_machine_test/machine_test/presentation/pages/home_screen.dart';
import 'package:datahub_machine_test/machine_test/presentation/pages/login_screen.dart';
import 'package:datahub_machine_test/machine_test/presentation/pages/splash_screen.dart';
import 'package:datahub_machine_test/machine_test/presentation/routes/app_pages_names.dart';
import 'package:get/get.dart';

import '../manager/binding/home_binding.dart';

class AppRoutes {
  static final appRoutes = [
    GetPage(
        name: AppPages.splash,
        page: () => const SplashScreen(),
        binding: SplashBindings()),
    GetPage(
        name: AppPages.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: AppPages.home,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
  ];
}
