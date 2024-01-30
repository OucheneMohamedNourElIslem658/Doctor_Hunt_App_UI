import 'package:find_doctor_app/commun/controllers/buttom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constents/colors.dart';

class MyButtomNavigatorBar extends StatelessWidget {
  MyButtomNavigatorBar({super.key});

  final buttomNavBarController = Get.put(MyButtomNavigatorBarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
        ),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 180,
            spreadRadius: 0,
          ),
        ]
      ),
      child: GetBuilder<MyButtomNavigatorBarController>(
        builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              buttomNavBarController.navigationItems.length, 
              (index) {
                final navigationItem = buttomNavBarController.navigationItems[index];
                final icon = navigationItem["image"] as String;
                var isSelected =  navigationItem["isSelected"] as bool;
                return GestureDetector(
                  onTap: () => buttomNavBarController.selectTab(index),
                  child: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSelected ? primaryColor : whiteColor,
                      borderRadius: const BorderRadius.all(Radius.circular(24))
                    ),
                    child: SvgPicture.asset(
                      icon,
                      // ignore: deprecated_member_use
                      color: isSelected 
                        ? whiteColor
                        : unselectedButtonColor
                      ),
                  ),
                );
              }
            ),
          );
        }
      ),
    );
  }
}