import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'main_screen.dart';
import '../home/controllers/drawer.dart';
import '../home/screens/my_drawer/my_drawer.dart';

class Landing extends StatelessWidget {
  Landing({super.key});

  final drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MyDrawerController>(
        builder: (_) {
          return Stack(
            children: [
              MyDrawer(),
              Main().animate(
                effects: drawerController.showDrawerEffects2,
                target: drawerController.showDrawer ? 1 : 0
              ),
              Main().animate(
                effects: drawerController.showDrawerEffects1,
                target: drawerController.showDrawer ? 1 : 0
              )
            ],
          );
        }
      ),
    );
  }
}