import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commun/widgets/background.dart';
import '../../components/categories.dart';
import '../../components/feature_doctor_list.dart';
import '../../components/header_with_search_bar.dart';
import '../../components/live_doctors.dart';
import '../../components/popular_doctors.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final Size size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top:125,
          left: -100,
          child: BlueShadow()
        ),
        const Positioned(
          right: -55,
          bottom: -10,
          child: GreenShadow(),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithSearchBar(size: size),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LiveDoctors(size: size),
                    const SizedBox(height: 30),
                    const Categories(),
                    const SizedBox(height: 12),
                    const PopularDoctorsTitle(),
                    const SizedBox(height: 15),
                    const FeatureDoctors(),
                    const SizedBox(height: 90),
                  ]
                )
              )
            ]
          )
        ),
      ],
    );
  }
}