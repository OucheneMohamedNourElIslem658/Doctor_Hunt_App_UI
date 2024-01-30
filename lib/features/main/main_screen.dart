import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commun/constents/colors.dart';
import '../../commun/controllers/buttom_nav_bar.dart';
import '../../commun/widgets/buttom_nav_bar.dart';
import '../home/controllers/drawer.dart';

class Main extends StatelessWidget {
  Main({super.key});

  final drawerController = Get.put(MyDrawerController());
  final buttomNavController = Get.put(MyButtomNavigatorBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) {
        return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(drawerController.showDrawer ? 60:0)),
          child: Stack(
            children: [
              Container(
                color: whiteColor,
                child: GetBuilder<MyButtomNavigatorBarController>(
                  builder: (context) {
                    return buttomNavController.currentPage;
                  }
                ),
              ),
              drawerController.showDrawer
                ? Container(color: Colors.transparent)
                : const SizedBox(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: MyButtomNavigatorBar()
              ),
            ],
          ),
        );
      }
    );
  }
}