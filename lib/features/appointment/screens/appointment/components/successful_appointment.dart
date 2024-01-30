import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/custom_elevated_button.dart';
import 'package:find_doctor_app/features/main/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SuccessfulAppointment extends StatelessWidget {
  const SuccessfulAppointment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: greyTextColor,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 25),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ThankYou(),
            const SizedBox(height: 30),
            const BookingInfo(),
            const SizedBox(height: 30),
            Column(
              children: [
                CustomElevatedButton(
                  text: 'Done',
                  borderRadius: 6,
                  onPressed: () => Get.offAll(Landing()),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    'Edit your appointment',
                    textAlign: TextAlign.center,
                    style: headLine3Grey
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BookingInfo extends StatelessWidget {
  const BookingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'You booked an appointment with Dr. \nPediatrician Purpieson on February 21,\nat 02:00 PM',
      textAlign: TextAlign.center,
      style: headLine3Grey
    );
  }
}

class ThankYou extends StatelessWidget {
  const ThankYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(75)),
            color: blureGreen
          ),
          child: SvgPicture.asset('assets/icons/like.svg'),
        ),
        const SizedBox(height: 10),
        const Text(
          'Thank You !',
          style: headline22
        ),
        const Text(
          'Your Appointment Successful',
          style: headline21
        ),
      ],
    );
  }
}