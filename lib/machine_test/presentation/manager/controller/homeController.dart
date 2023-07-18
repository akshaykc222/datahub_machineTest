import 'dart:async';
import 'dart:io';

import 'package:easy_geofencing/easy_geofencing.dart';
import 'package:easy_geofencing/enums/geofence_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  StreamSubscription<GeofenceStatus>? geofenceStatusStream;
  final started = false.obs;
  final entered = false.obs;
  final loading = false.obs;
  startGeoFencing() async {
    /// disposing old listeners

    started.value = true;
    if (geofenceStatusStream != null) {
      geofenceStatusStream?.resume();
    }

    EasyGeofencing.startGeofenceService(
        pointedLatitude: "10.010092",
        pointedLongitude: "76.336313",
        radiusMeter: "200.0",
        eventPeriodInSeconds: 1);

    geofenceStatusStream =
        EasyGeofencing.getGeofenceStream()!.listen((GeofenceStatus status) {
      if (status == GeofenceStatus.enter) {
        loading.value = false;
        entered.value = true;
      } else if (status == GeofenceStatus.init) {
        loading.value = true;
      } else {
        loading.value = false;
        entered.value = false;
      }
    });
  }

  // stopGeoFencing() async {
  //   started.value = false;
  //   entered.value = false;
  //
  //   EasyGeofencing.stopGeofenceService();
  //   geofenceStatusStream!.cancel();
  //
  //   // geofenceStatusStream = null;
  // }

  void showExitDialog() {
    Get.defaultDialog(
      title: 'Do you want to exit?',
      content: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Are you sure you want to exit the app?'),
      ),
      actions: [
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Get.back();
          },
        ),
        TextButton(
          child: const Text('Exit'),
          onPressed: () {
            exit(0);
          },
        ),
      ],
    );
  }

  @override
  void onClose() {
    EasyGeofencing.stopGeofenceService();
    geofenceStatusStream?.cancel();
    geofenceStatusStream;
    super.onClose();
  }
}
