import 'package:flutter/material.dart';

import '../../../commun/widgets/like_button.dart';
import 'availble.dart';
import '../../../commun/widgets/booking_button.dart';
import 'info.dart';
import 'performance.dart';
import 'picture.dart';

class SearchedDoctorCard extends StatelessWidget {
  const SearchedDoctorCard({
    super.key,
    required this.image,
    required this.name,
    required this.liked,
    required this.speciality,
    required this.experiance,
    required this.rating,
    required this.stories,
    required this.availbleTime,
    required this.index
  });

  final String image;
  final String name;
  final bool liked;
  final String speciality;
  final int experiance;
  final int rating;
  final int stories;
  final String availbleTime;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(0, 0),
            blurRadius: 20.0,
            spreadRadius: 0.0,
          )
        ]
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Picture(image: image),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Name(name: name),
                          LikeButton(liked: liked)
                        ],
                      ),
                      Speciality(speciality: speciality,index: index),
                      Experiance(experiance: experiance),
                      Performance(rating: rating, stories: stories),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NextAvailable(),
                  const SizedBox(height: 3),
                  WorkTime(availbleTime: availbleTime)
                ],
              ),
              const BookingButton()
            ],
          )
        ],
      ),
    );
  }
}