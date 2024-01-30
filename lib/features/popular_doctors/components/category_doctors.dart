import 'package:flutter/material.dart';

import '../../../commun/widgets/doctor_card_2.dart';

class CategoryDoctors extends StatelessWidget {
  const CategoryDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(
        4, 
        (index) => const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: DoctorCard2(
            height: 100,
            imageWidth: 82,
            nameSize: 18,
            specialitySize: 14,
            buttonSize: 20,
            ratingBarHeight: 12,
            showRating: true,
          ),
        )
      )
    );
  }
}