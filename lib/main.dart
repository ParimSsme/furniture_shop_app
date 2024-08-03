import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'config/router/routes.dart';
import 'config/theme/app_theme.dart';
import 'features/feature_boarding/presentation/screens/boarding_screen.dart';
import 'locator.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // initialize hive
  // await Hive.initFlutter('furniture_box');
  // //
  // // ///  init locator
  // await setup();

  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BoardingScreen(),
      theme: appThemeData,
       navigatorKey: AppNavigator.navigatorKey,
       onGenerateRoute: AppNavigator.onGenerateRoute,
    ),
  );
}
