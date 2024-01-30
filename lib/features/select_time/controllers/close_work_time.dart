import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class CloseWorkTimeController extends GetxController {
  final workTimeList = [
    {'date': 'Today, 23 Feb','slots': 0,'selected': false},
    {'date': 'Tomorrow, 24 Feb','slots': 9,'selected': true},
    {'date': 'Thu, 25 Feb','slots': 10,'selected': false}
  ];
  final scrollController = ScrollController();

  void _jumpToEnd(){
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await scrollController.animateTo(
        scrollController.position.maxScrollExtent, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeOut
      );
    });
  }

  void _jumpToBegin(){
    SchedulerBinding.instance.addPostFrameCallback((_) async { 
      await scrollController.animateTo(
        scrollController.position.minScrollExtent, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeOut
      );
    });
  }

  void selectDay(int index){
    for (var element in workTimeList) {
      element['selected'] = false;
    }
    workTimeList[index]['selected'] = true;
    if (index == 0) {
      _jumpToBegin();
    } else if (index == 2) {
      _jumpToEnd();
    }
    update();
  }
}