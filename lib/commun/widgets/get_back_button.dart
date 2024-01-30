import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class GetBackButton extends StatelessWidget {
  const GetBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: whiteColor
        ),
        child: SvgPicture.asset(
          'assets/icons/back_arrow.svg',
          fit: BoxFit.cover
        ),
      ),
    );
  }
}