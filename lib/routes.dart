import 'package:fist_app/representation/screen/hotel_booking_screen.dart';
import 'package:fist_app/representation/screen/hotel_screen.dart';
import 'package:fist_app/representation/screen/intro_screen.dart';
import 'package:fist_app/representation/screen/main_app.dart';
import 'package:fist_app/representation/screen/select_date_screen.dart';
import 'package:fist_app/representation/screen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routerName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  HotelBookingScreen.routeName: (context) => const HotelBookingScreen(),
  SelectDateScreen.routeName: (context) =>  SelectDateScreen(),

};