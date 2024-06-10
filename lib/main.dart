import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/languages.dart';
import 'package:get_x/responsive.dart';
import 'package:get_x/route_names.dart';
import 'package:get_x/screen_one.dart';
import 'package:get_x/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Counter(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: RouteNames.screenOne, page: () => ScreenOne()),
        GetPage(name: RouteNames.screenTwo, page: () => ScreenTwo()),
        GetPage(name: RouteNames.responsive, page: () => Responsive()),
        GetPage(name: RouteNames.counter, page: () => Counter()),
      ],
      translations: Languages(),
      locale: Locale('en', 'US'),
    );
  }
}
