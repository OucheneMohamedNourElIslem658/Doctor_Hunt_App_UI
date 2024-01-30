import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/profile_pic.dart';
import 'package:find_doctor_app/features/auth/screens/login.dart';
import 'package:find_doctor_app/features/home/controllers/drawer.dart';
import 'package:find_doctor_app/features/home/controllers/navigation_bar.dart';
import 'package:find_doctor_app/features/profile/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 50),
        decoration: const BoxDecoration(
          gradient: drawerBackgroundColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoTile(drawerController: drawerController),
            CustomNavigationBar(),
            InkWell(
              onTap: () => Get.dialog(const LogoutDialog()),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/icons/logout.svg'),
                  const SizedBox(width: 27),
                  const Text(
                    'Logout',
                    style: headline24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 10),
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log Out',
              style: headline1Black,
            ),
            SizedBox(height: 5),
            Text(
              'Are you sure you want to logout?',
              style: headline23Grey,
            ),
            SizedBox(height: 18),
            Actions()
          ],
        ),
      ),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () => Get.back(), 
          child: const Text(
            'Cancel',
            style: headline17Green,
          )
        ),
        TextButton(
          onPressed: () => Get.offAll(Login()), 
          child: const Text(
            'Ok',
            style: headline17Green,
          )
        ),
      ],
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});

  final navigationController = Get.put(MyNavigationBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyNavigationBarController>(
      builder: (context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: navigationController.items.length,
          itemBuilder: (context, index) {
            final item = navigationController.items[index];
            final name = item['name'] as String;
            final icon = item['icon'] as String;
            final isSelected = item['isSelected'] as bool;
            return Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => navigationController.selectItem(index),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 20,
                    top: 20,
                    bottom: 20
                  ),
                  constraints:const BoxConstraints(maxWidth: 212),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: isSelected ? whiteColor.withOpacity(0.1) : null
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // ignore: deprecated_member_use
                      SvgPicture.asset(icon,color: whiteColor,),
                      const SizedBox(width: 20),
                      Text(name,style: headline23),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/next.svg'),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key, 
    required this.drawerController,
  });

  final MyDrawerController drawerController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Get.to(const Profile()),
          child: Row(
            children: [
              const ProfilePic(image: 'assets/images/doctor.jpg',size: 44),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Amani Ouchene',
                    style: headline17White,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/phone.svg'),
                      const Text(
                        ' 01303-527300',
                        style: headline9White,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () => drawerController.showHideDrawer(),
          child: SvgPicture.asset('assets/icons/close.svg')
        ),
      ],
    );
  }
}