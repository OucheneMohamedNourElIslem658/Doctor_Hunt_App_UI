import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/categorie_card.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    List<LinearColor> typeColors = [
      blueTypeColor, 
      redTypeColor,
      orangeTypeColor,
      greenTypeColor
    ];

    final icons = [
      "assets/icons/home.svg",
      "assets/icons/associate.svg",
      "assets/icons/review.svg",
      "assets/icons/microscope.svg"
    ];

    final optionsDescriptions = [
      "Free home Sample pickup",
      "Practo associate labs",
      "E-Reports in 24-72 hours",
      "Free follow-up with a doctor"
    ];

    return Wrap(
      runSpacing: 35,
      children: List.generate(
        typeColors.length, 
        (index) => SizedBox(
          width: Get.width*0.5-20,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategorieCard(
                typeColor: typeColors[index], 
                image: icons[index],
                height: 50,
                width: 50,
                iconSize: 20,
              ),
              Expanded(
                child: Text(
                  optionsDescriptions[index],
                  style: headline6Black,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}