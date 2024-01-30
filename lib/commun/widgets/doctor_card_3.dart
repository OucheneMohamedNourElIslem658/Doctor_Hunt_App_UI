import 'package:flutter/material.dart';

import '../constents/colors.dart';
import 'booking_button.dart';
import 'like_button.dart';
import 'my_rating_bar.dart';
import 'picture.dart';

class DoctorCard3 extends StatelessWidget {
  const DoctorCard3({
    super.key,
    this.showBookingButton,
    this.onPressed
  });

  final bool? showBookingButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const  BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: blackColor.withOpacity(0.08),
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Picture(imageWidth: 92,imageHeight: 87),
              SizedBox(width: 12),
              Expanded(
                child: Info(),
              )
            ],
          ),
          SizedBox(height: showBookingButton == true || showBookingButton == null ? 15 : 0),
          showBookingButton == null || showBookingButton!
            ? BookingButton(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 37
              ),
              textSize: 14,
              onPressed: onPressed,
            )
            :const SizedBox()
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Pediatrician',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'rubikMedium'
                    ),
                  ),
                  LikeButton(liked: true)
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Specialist Cardiologist',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'rubik',
                  color: greyTextColor
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyRatingbar(),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '\$ ',
                      style: TextStyle(
                        fontSize: 16,
                        color: primaryColor,
                        fontFamily: 'rubikMedium'
                      )
                    ),
                    TextSpan(
                      text: '28.00/hr',
                      style: TextStyle(
                        color: greyTextColor,
                        fontSize: 16,
                        fontFamily: 'rubik'
                      )
                    )
                  ]
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}