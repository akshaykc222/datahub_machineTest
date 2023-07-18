import 'package:datahub_machine_test/machine_test/domain/use_cases/save_login_use_case.dart';
import 'package:datahub_machine_test/machine_test/presentation/routes/app_pages_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final SaveLoginUseCase loginUseCase;

  LoginController(this.loginUseCase);

  final formKey = GlobalKey<FormState>();

  ///controller for user name in login screen
  final userNameController = TextEditingController();

  ///controller for password text field in  login screen
  final passwordController = TextEditingController();

  ///function to validate login
  login() {
    /// hardcoded login credentials
    if (formKey.currentState?.validate() == true) {
      if (userNameController.text == "test@gmail.com" &&
          passwordController.text == "123456789") {
        formKey.currentState?.reset();
        loginUseCase.call();

        /// saving login status as true when credentials are validated
        Get.offAllNamed(AppPages.home);
      } else {
        Get.snackbar("Error", "Invalid credentials entered");
      }
    }
  }
}
