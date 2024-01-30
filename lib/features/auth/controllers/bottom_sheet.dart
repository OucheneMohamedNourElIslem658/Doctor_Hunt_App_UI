import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  late PageController pagesController;
  int currentPage = 0;
  double value = 0;
  @override
  void onInit() {
    pagesController = PageController();
    pagesController.addListener(getCurrentPage);
    super.onInit();
  }

  void getCurrentPage(){
    value = pagesController.page ?? 0;
    currentPage = value.toInt();
    update();
  }

  void animateToNextPage(){
    switch (currentPage) {
      case 0:
        pagesController.animateToPage(
          1,
          duration: const Duration(milliseconds: 200), 
          curve: Curves.easeInOut
        );
        break;
      case 1:
        pagesController.animateToPage(
          2, 
          duration: const Duration(milliseconds: 200), 
          curve: Curves.easeInOut
        );
        break;
      default: 
        Get.back();
        currentPage = 0;
    }
  }
}