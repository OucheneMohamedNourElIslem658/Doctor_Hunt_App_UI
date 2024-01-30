import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constents/text_styles.dart';
import 'background.dart';
import 'custom_elevated_button.dart';
import 'screen_title_app_bar.dart';

class SimpleLandingScreen extends StatelessWidget {
  const SimpleLandingScreen({
    super.key, 
    required this.title, 
    required this.image, 
    required this.mainText, 
    required this.subText, 
    required this.buttontext, 
    required this.onPressed,
  });
  
  final String title,image,mainText,subText,buttontext;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Column(
            children: [
              ScreenTitleAppBar(title: title),
              const Spacer(flex: 3),
              Container(
                height: 250,
                width: 250,
                padding: const EdgeInsets.all(60),
                decoration: BoxDecoration(
                  color: bluredGreen.withOpacity(0.76),
                  borderRadius: const BorderRadius.all(Radius.circular(200))
                ),
                child: SvgPicture.asset(image),
              ),
              const SizedBox(height: 40),
              Text(
                mainText,
                textAlign: TextAlign.center,
                style: headline24Black,
              ),
              const SizedBox(height: 15),
              Text(
                subText,
                textAlign: TextAlign.center,
                style: headLine3Grey,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomElevatedButton(
                  text: buttontext, 
                  onPressed: onPressed,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const Spacer(flex: 7)
            ],
          ),
        ),
      )
    );
  }
}