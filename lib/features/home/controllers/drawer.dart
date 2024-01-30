import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  bool showDrawer = false;

  void showHideDrawer(){
    showDrawer = !showDrawer;
    update();
  }

  final showDrawerEffects1 = <Effect> [
    const ScaleEffect(
      begin: Offset(1, 1),
      end: Offset(0.6, 0.6),
      duration: Duration(
        milliseconds: 200
      )
    ),
    MoveEffect(
      begin: const Offset(0, 0),
      end: Offset(Get.size.width/2+30, 0),
      duration: const Duration(
        milliseconds: 200
      )
    ),
    CustomEffect(
      begin: 0,
      end: 30,
      builder:(context, value, child) => ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(value)),
        child: child,
      ),
    )
  ];

  final showDrawerEffects2 = <Effect> [
    const ScaleEffect(
      begin: Offset(1, 1),
      end: Offset(0.4, 0.4),
      duration: Duration(
        milliseconds: 200
      )
    ),
    MoveEffect(
      begin: Offset(Get.size.width/2, 0),
      end: Offset(Get.size.width/2-50, 0),
      duration: const Duration(
        milliseconds: 300
      )
    ),
    CustomEffect(
      begin: 0,
      end: 0.5,
      builder:(context, value, child) => Opacity(
        opacity: value,
        child: child,
      ),
    )
  ];
}