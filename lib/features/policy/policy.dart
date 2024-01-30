import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ScreenTitleAppBar(title: "Privacy policy"),
                  SizedBox(height: 28),
                  PrivacyPolicy(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final rules = [
      'The standard chunk of lorem Ipsum used since  1500s is reproduced below for those interested. ',
      'Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.',
      ' Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.',
      'The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Doctor Hunt Apps Privacy Policy',
          style: headLine30
        ),
        const Text(
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more \n',
          style: headline20Grey2
        ),
        Column(
          children: List.generate(
            rules.length, 
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5,right: 8),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                      color: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      rules[index],
                      style: headline20Grey2
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
        const Text(
          "It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.",
          style: headline20Grey2,
        )
      ],
    );
  }
}