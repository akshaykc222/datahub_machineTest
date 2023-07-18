import 'package:datahub_machine_test/machine_test/presentation/routes/app_pages_names.dart';
import 'package:datahub_machine_test/machine_test/presentation/routes/app_routes.dart';
import 'package:datahub_machine_test/machine_test/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MachineTest extends StatelessWidget {
  const MachineTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.appRoutes,
      initialRoute: AppPages.splash,
      theme: AppTheme.lightTheme,
    );
  }
}
