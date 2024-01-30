import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:find_doctor_app/commun/widgets/search_bar.dart';
import 'package:find_doctor_app/commun/widgets/simple_landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/orders_list.dart';

class MedicineOrder extends StatelessWidget {
  const MedicineOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleLandingScreen(
        title: 'Medicine Orders', 
        image: 'assets/images/notes.svg', 
        mainText: 'No orders placed yet', 
        subText: 'Place your first order now.', 
        buttontext: 'Order medicines', 
        onPressed: () => Get.to(MedicineOrders())
      ),
    );
  }
}

class MedicineOrders extends StatelessWidget {
  MedicineOrders({super.key});

  final size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScreenTitleAppBar(title: 'Medicines orders'),
                  const SizedBox(height: 35),
                  MySearchBar(size: size),
                  const SizedBox(height: 25),
                  OrdersList(size: size),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}