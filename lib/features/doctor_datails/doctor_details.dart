import 'package:find_doctor_app/features/appointment/screens/patient/patient.dart';
import 'package:get/get.dart';

import '../../commun/widgets/background.dart';
import '../../commun/widgets/screen_title_app_bar.dart';
import '../../commun/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import '../../commun/widgets/doctor_card_3.dart';
import 'components/location.dart';
import 'components/services.dart';
import 'components/statistic.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ScreenTitleAppBar(title: 'Doctor Details'),
                      SearchButton(size: 18)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          DoctorCard3(
                            onPressed: () => Get.to(const Patient()),
                          ),
                          const SizedBox(height: 20),
                          const Statistic(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Services()
                      ),
                      const SizedBox(height: 25),
                      const Location(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}