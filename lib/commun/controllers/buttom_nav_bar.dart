import 'package:find_doctor_app/features/favourite_doctors/favourite_doctors.dart';
import 'package:find_doctor_app/features/home/screens/home/home.dart';
import 'package:find_doctor_app/features/select_time/select_time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButtomNavigatorBarController extends GetxController{
  Widget currentPage = Home();
  var navigationItems = [
    {"image": 'assets/icons/home.svg', "isSelected": true, 'page': Home()},
    {"image": 'assets/icons/likes.svg', "isSelected": false,'page': FavouriteDoctors()},
    {"image": 'assets/icons/book.svg', "isSelected": false, 'page': const SelectTime()},
    {"image": 'assets/icons/chat.svg', "isSelected": false,'page': Container()}
  ];
  
  void selectTab(int index){
    for (var element in navigationItems) {
      element["isSelected"] = false;
    }
    navigationItems[index]["isSelected"] = true;
    final page = navigationItems[index]['page'] as Widget;
    currentPage = page;
    update();
  }
}