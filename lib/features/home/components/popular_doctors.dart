import 'package:find_doctor_app/features/doctor_datails/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/widgets/doctor_card_1.dart';
import '../../../commun/widgets/famous_doctors.dart';
import '../../popular_doctors/popular_doctors.dart';

class PopularDoctorsTitle extends StatelessWidget {
  const PopularDoctorsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FamousDoctors(
          categorie: "Popular Doctor",
          onPressed:() => Get.to(const PopularDoctors()),
        ),
        const SizedBox(height: 8),
        const PopularDoctorList(),
      ],
    );
  }
}

class PopularDoctorList extends StatelessWidget {
  const PopularDoctorList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          2,
          (index) {
            return DoctorCard1(
              onPressed: () => Get.to(const DoctorDetails()),
            );
          }
        ),
      ),
    );
  }
}