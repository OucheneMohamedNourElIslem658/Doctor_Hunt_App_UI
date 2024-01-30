import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/features/doctor_datails/doctor_details.dart';
import 'package:get/get.dart';

import '../../../commun/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/widgets/like_button.dart';
import '../../../commun/widgets/famous_doctors.dart';

class FeatureDoctors extends StatelessWidget {
  const FeatureDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FamousDoctors(categorie: "Feature Doctor"),
        SizedBox(height: 8),
        FeatureDoctorList(),
      ],
    );
  }
}

class FeatureDoctorList extends StatelessWidget {
  const FeatureDoctorList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4, 
          (index) => Container(
            margin: const EdgeInsets.only(right: 15),
            child: const FeaturDoctorItem(
              name: 'Dr. Crick', 
              image: 'assets/images/doctor.jpg', 
              like: false, rating: 3.7, 
              paying: 25.00
            ),
          )
        )
      )
    );
  }
}

class FeaturDoctorItem extends StatelessWidget {
  const FeaturDoctorItem({
    super.key, 
    required this.name, 
    required this.image, 
    required this.like, 
    required this.rating, 
    required this.paying,
  });

  final String name,image;
  final bool like;
  final double rating;
  final double paying;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const DoctorDetails()),
      child: Container(
        height: 130,
        width: 96,
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -1),
              blurRadius: 20,
              color: blackColor.withOpacity(0.06),
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const LikeButton(size: 9, liked: true,),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/ratingStar.svg",
                  height: 9
                ),
                const SizedBox(width: 5),
                Text(
                  "$rating",
                  style: headline10
                )
              ],
            ),
            ProfilePic(image: image,size: 54),
            NameAndPrice(name: name, paying: paying)
          ],
        ),
      ),
    );
  }
}

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    super.key,
    required this.name,
    required this.paying,
  });

  final String name;
  final double paying;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'rubikMedium'
          ),
        ),
        const SizedBox(height: 3),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "\$",
                style: headline11
              ),
              TextSpan(
                text: "$paying/ hours",
                style: headline12
              )
            ]
          )
        )
      ],
    );
  }
}