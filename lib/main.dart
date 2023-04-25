import 'package:fist_app/core/constants/color_constants.dart';
import 'package:fist_app/core/helpers/local_storage_helper.dart';
import 'package:fist_app/representation/screen/splash_screen.dart';
import 'package:fist_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travo app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor:  ColorPalette.backgroundScaffoldColor
      ),
      routes: routes,
      home: const SplashScreen(),
    );
  }
}



