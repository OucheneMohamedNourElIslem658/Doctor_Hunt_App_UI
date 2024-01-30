import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constents/colors.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,
    required this.typeColor, 
    required this.image, 
    this.height, 
    this.width, 
    this.iconSize,
  });

  final LinearColor typeColor;
  final String image;
  final double? height,width,iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: height ?? 90,
      width: width ?? 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            typeColor.color1,
            typeColor.color2,
          ]
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
      child: Stack(
        children: [
          Positioned(
            right: -33.5,
            child: Container(
              height: 67,
              width: 67,
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.08),
                borderRadius: const BorderRadius.all(Radius.circular(33.5))
              ),
            ),
          ),
          Positioned(
            bottom: -28,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.08),
                borderRadius: const BorderRadius.all(Radius.circular(40))
              ),
            ),
          ),
          Align(
            child: SvgPicture.asset(
              image,
              height: iconSize,
            ),
          )
        ],
      ),
    );
  }
}