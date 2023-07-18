import 'package:datahub_machine_test/machine_test/presentation/manager/controller/homeController.dart';
import 'package:datahub_machine_test/machine_test/presentation/widgets/circle_button.dart';
import 'package:datahub_machine_test/machine_test/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return WillPopScope(
      onWillPop: () {
        controller.showExitDialog();
        return Future.value(false);
      },
      child: Scaffold(
          body: Obx(
        () => LoadingWidget(
          isLoading: controller.loading.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => CircleButton(
                    label: controller.started.isFalse ? "Start" : "",
                    color: controller.started.value
                        ? (controller.entered.value ? Colors.green : Colors.red)
                        : Colors.black,
                    onPressed: () {
                      if (controller.started.isTrue) {
                        // controller.stopGeoFencing();
                      } else {
                        controller.startGeoFencing();
                      }
                    },
                  )),
              Row()
            ],
          ),
        ),
      )),
    );
  }
}
