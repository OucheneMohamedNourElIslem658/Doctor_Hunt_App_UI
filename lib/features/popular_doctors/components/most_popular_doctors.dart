import 'package:flutter/material.dart';

import '../../../commun/widgets/doctor_card_1.dart';

class MostPopularDoctors extends StatelessWidget {
  const MostPopularDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4, 
          (index) => const DoctorCard1(
            height: 200,
            imageHeight: 130,
            width: 136,
            nameSize: 14,
            specialitySize: 10,
            ratingBarHeight: 10,
          ),
        )
      ),
    );
  }
}