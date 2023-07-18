import 'package:datahub_machine_test/machine_test/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'machine_test/injector.dart';

Future<void> main() async {
  await GetStorage.init();
  setup();
  runApp(const MachineTest());
}
