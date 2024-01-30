import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/controllers/buttom_nav_bar.dart';
import 'package:find_doctor_app/features/find_doctors/find_doctors.dart';
import 'package:find_doctor_app/features/home/controllers/drawer.dart';
import 'package:find_doctor_app/features/profile/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/widgets/profile_pic.dart';
import '../../../commun/widgets/search_bar.dart';

class HeaderWithSearchBar extends StatelessWidget {
  HeaderWithSearchBar({
    super.key,
    required this.size,
  });

  final bottomNavController = Get.put(MyButtomNavigatorBarController());

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          child: SizedBox(height: 175)
        ),
        Positioned(
          child: BackgroundHeader(size: size)
        ),
        Positioned(
          bottom: 0,
          left: 20,
          right: 20,
          child: GestureDetector(
            onTap: () => Get.to(FindDoctors()),
            child: MySearchBar(
              size: size,
              enable: false,
            ),
          ),
        ),
      ],
    );
  }
}

class BackgroundHeader extends StatelessWidget {
  BackgroundHeader({
    super.key,
    required this.size,
  });

  final Size size;
  final drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft:  Radius.circular(30),
          bottomRight:  Radius.circular(30)
        ),
        gradient: LinearGradient(
          colors: [
            greenLinear1,
            greenLinear2
          ]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => drawerController.showHideDrawer(),
            child: const WelcomeText()
          ),
          GestureDetector(
            onTap: () => Get.to(const Profile()),
            child: const ProfilePic(image: 'assets/images/doctor.jpg')
          ),
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hi Handwerker",
          style: headLine5
        ),
        Text(
          "Find Your Doctor",
          style: headline1White
        )
      ],
    );
  }
}