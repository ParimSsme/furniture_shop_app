import 'package:flutter/material.dart';
import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:get/get.dart';
import 'core/bindings/initial_bindings.dart';
import 'core/routes/app_routes.dart';
import 'core/services/shared_preferences_service.dart';
import 'core/theme/app_theme.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await LocalDataSource.init();
  await Get.putAsync(() => SharedPreferencesService().init());

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
