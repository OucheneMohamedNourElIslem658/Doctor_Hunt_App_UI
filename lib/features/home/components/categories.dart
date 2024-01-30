import 'package:find_doctor_app/features/find_doctors/find_doctors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/widgets/categorie_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<LinearColor> typeColors = [
      blueTypeColor,
      greenTypeColor,
      orangeTypeColor,
      redTypeColor
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4, 
          (index) {
            final typeColor = typeColors[index];
            return GestureDetector(
              onTap: () => Get.to(FindDoctors()),
              child: CategorieCard(
                typeColor: typeColor,
                image: "assets/icons/type${index+1}.svg",
              ),
            );
          }
        )
      ),
    );
  }
}