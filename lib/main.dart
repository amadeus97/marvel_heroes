import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'ui/app.dart';
import 'logic/settings_controller.dart';
import 'logic/settings_service.dart';

void main() async {
  registerSingletons();
  await settings.loadSettings();
  runApp(MyApp());
}

void registerSingletons() {
  GetIt.I.registerLazySingleton(() => SettingsController());
  GetIt.I.registerLazySingleton(() => SettingsService());
}

SettingsController get settings => GetIt.I.get<SettingsController>();
