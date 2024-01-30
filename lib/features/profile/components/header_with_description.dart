import 'package:find_doctor_app/features/profile/controllers/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/profile_pic.dart';
import '../../../commun/widgets/screen_title_app_bar.dart';

class HeaderWithDescription extends StatelessWidget {
  const HeaderWithDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
        bottom: 30
      ),
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30)
        )
      ),
      child: SafeArea(
        child: Column(
          children: [
            const ScreenTitleAppBar(
              title: 'Profile',
              style: headline7White,
            ),
            const SizedBox(height: 40),
            const Text(
              'Set up your profile',
              style: headline17White
            ),
            const SizedBox(height: 10),
            const Text(
              'Update your profile to connect your doctor with better impression.',
              textAlign: TextAlign.center,
              style: headLine3White,
            ),
            const SizedBox(height: 20),
            ProfileImage()
          ],
        )
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  ProfileImage({
    super.key,
  });

  final profilePicController = Get.put(ProfilePicController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilePicController>(
      builder: (context) {
        return Stack(
          alignment: Alignment.bottomRight,
          children: [
            profilePicController.image == null
            ? const ProfilePic(
              image: 'assets/images/user.png',
              size: 130
            )
            : SizedBox(
              height: 130,
              width: 130,
              child: ClipOval(
                child: Image.file(
                  profilePicController.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => profilePicController.getProfilePic(),
              child: CircleAvatar(
                backgroundColor: greyTextColor.withOpacity(0.8),
                child: SvgPicture.asset(
                  'assets/icons/camera.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                  height: 20,
                ),
              ),
            )
          ],
        );
      }
    );
  }
}