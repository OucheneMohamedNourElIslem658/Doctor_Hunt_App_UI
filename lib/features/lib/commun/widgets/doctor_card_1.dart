import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../constents/colors.dart';
import 'my_rating_bar.dart';

class DoctorCard1 extends StatelessWidget {
  const DoctorCard1({
    super.key, 
    this.height, 
    this.width, 
    this.nameSize, 
    this.specialitySize, 
    this.ratingBarHeight, 
    this.imageHeight, 
    this.onPressed
  });

  final double? height,width,nameSize,specialitySize,ratingBarHeight,imageHeight;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 264,
        width: width ?? 190,
        margin: const EdgeInsets.only(right: 20),
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage("assets/images/doctor.jpg"),
              height: imageHeight ?? 180,
            ),
            Text(
              "Dr. Fillerup Grab",
              style: TextStyle(
                fontFamily: primaryFontMedium,
                fontSize: nameSize ?? 18,
              ),
            ),
            Text(
              "Medicine Specialist",
              style: TextStyle(
                fontFamily: primaryFont,
                fontSize: specialitySize ?? 12,
                color: greyTextColor
              ),
            ),
            MyRatingbar(height: ratingBarHeight),
          ],
        ),
      ),
    );
  }
}