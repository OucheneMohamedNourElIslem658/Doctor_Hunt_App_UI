import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../constents/colors.dart';
import 'like_button.dart';
import 'my_rating_bar.dart';
import 'picture.dart';

class DoctorCard2 extends StatelessWidget {
  const DoctorCard2({
    super.key, 
    this.height, 
    this.imageWidth, 
    this.nameSize, 
    this.specialitySize, 
    this.ratingBarHeight, 
    this.showRating, 
    this.buttonSize,
  });

  final double? 
    height,
    imageWidth,
    nameSize,
    specialitySize,
    ratingBarHeight,
    buttonSize;
  final bool? showRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 88,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(0, 0),
            blurRadius: 20.0,
            spreadRadius: 0.0,
          )
        ]
      ),
      child: Row(
        children: [
          Picture(imageWidth: imageWidth),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Dr. Shruti Kedia',
                            style: TextStyle(
                              fontFamily: primaryFontMedium,
                              fontSize: nameSize ?? 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: buttonSize ?? 15,
                          child: const LikeButton(liked: true)
                        )
                      ],
                    ),
                    Text(
                      'Upasana Dental Clinic, salt lake',
                      style: TextStyle(
                        fontFamily: primaryFont,
                        fontSize: specialitySize ?? 12,
                        color: greyTextColor
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: ratingBarHeight ?? 10,
                      child: const MyRatingbar()
                    ),
                    showRating == true
                    ?RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '2.4 ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'rubikMedium',
                              color: blackColor
                            )
                          ),
                          TextSpan(
                            text: '(2475 views)',
                            style: TextStyle(
                              fontSize: 12,
                              color: greyTextColor,
                              fontFamily: 'rubik'
                            )
                          )
                        ]
                      )
                    )
                    : const SizedBox()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}