import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_nutrient_detection/page/home_page.dart';
import 'package:soil_nutrient_detection/page/iot_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/iot', page: () => const IotPage()),
      ],
    );
  }
}
