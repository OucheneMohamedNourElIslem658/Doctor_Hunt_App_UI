import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/options.dart';
import 'components/recommendations.dart';

class DiagnosticsTestsHome extends StatelessWidget {
  const DiagnosticsTestsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  ScreenTitleAppBar(
                    title: "Diagonstics Tests"
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Get Full body health checkup from the comfort of your home.",
                    style: headline25Medium,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Upto 45% off + get 10% healthcash back",
                    style: headline20,
                  ),
                  SizedBox(height: 26),
                  Options(),
                  SizedBox(height: 20),
                  Text(
                    "Recommend for you",
                    style: headLine29,
                  ),
                  SizedBox(height: 15),
                  Recomandations()
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}