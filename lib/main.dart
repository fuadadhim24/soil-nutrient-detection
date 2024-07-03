import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_nutrient_detectio/page/home_page.dart';

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
        GetPage(name: '/', page: () => const HomePage()),
      ],
    );
  }
}
