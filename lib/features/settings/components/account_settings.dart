import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import 'utils.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsTile(icon: 'assets/icons/lock.svg',name: 'Change Password',color: redColor2,onPressed: (){}),
        SettingsTile(icon: 'assets/icons/notification.svg',name: 'Change Password',color: greenColor,onPressed: (){}),
        SettingsTile(icon: 'assets/icons/pie.svg',name: 'Change Password',color: blueColor,onPressed: (){}),
        SettingsTile(icon: 'assets/icons/group.svg',name: 'Change Password',color: orangeColor,onPressed: (){}),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key, 
    required this.icon, 
    required this.name,
    required this.color,
    required this.onPressed
  });

  final String icon,name;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: primaryColor.withOpacity(0.06)
            )
          )
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: SvgPicture.asset(icon),
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: headline23Grey,
            ),
            const Spacer(),
            const ArrowForward()
          ],
        ),
      ),
    );
  }
}