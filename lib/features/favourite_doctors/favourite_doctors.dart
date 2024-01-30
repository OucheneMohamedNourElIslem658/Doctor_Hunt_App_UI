import 'package:find_doctor_app/commun/constents/text_styles.dart';

import '../../commun/constents/colors.dart';
import '../../../commun/widgets/buttom_nav_bar.dart';
import '../home/components/feature_doctor_list.dart';
import '../../../commun/widgets/famous_doctors.dart';
import '../../../commun/widgets/like_button.dart';
import '../../../commun/widgets/profile_pic.dart';
import '../../../commun/widgets/screen_title_app_bar.dart';
import '../../../commun/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/widgets/background.dart';

class FavouriteDoctors extends StatelessWidget {
  FavouriteDoctors({super.key});

  final Size size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ScreenTitleAppBar(title: 'Favourite Doctors',showButton: false,),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MySearchBar(size: size),
                  ),
                  const SizedBox(height: 35),
                  Align(
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: List.generate(
                        4,
                        (index) => DoctorCard3(size: size)
                      )
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: FamousDoctors(categorie: "Popular Doctor"),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: FeatureDoctorList(),
                  ),
                  const SizedBox(height: 84)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MyButtomNavigatorBar()
            )
          ],
        ),
      )
    );
  }
}

class DoctorCard3 extends StatelessWidget {
  const DoctorCard3({super.key, required this.size});
  
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: (size.width-55)/2,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 20,
            color: blackColor.withOpacity(0.06),
          ),
        ]
      ),
      child: const Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: LikeButton(liked: true,size: 20),
          ),
          ProfilePic(
            image: 'assets/images/doctor 4.png',
            size: 90,
          ),
          Spacer(),
          Text(
            'Dr. Shouey',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'rubikMedium',
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Specalist Cardiology',
            style: headline20
          ),
          Spacer()
        ],
      )
    );
  }
}