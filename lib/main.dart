import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/theme/app_theme.dart';
import 'core/bindings/initial_bindings.dart';
import 'core/routes/app_routes.dart';
import 'core/services/shared_preferences_service.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() => SharedPreferencesService().init());
  // initialize hive
  // await Hive.initFlutter('furniture_box');
  // //
  // // ///  init locator
  // await setup();

  runApp(
    GetMaterialApp(
      builder: (context, child){
        return MediaQuery.withNoTextScaling(
          child: child!,
        );
      },
      initialBinding: InitialBindings(),
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.splash,
      theme: appThemeData,
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
    ),
  );
}
