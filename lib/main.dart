import 'package:find_doctor_app/features/splash/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'commun/utils/my_scroll_bahaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (_, child) => ScrollConfiguration(
        behavior: MyScrollBehavior(), 
        child: child!
      ),
      home: Splash(),
    );
  }
}