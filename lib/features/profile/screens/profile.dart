import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:flutter/material.dart';

import '../components/header_with_description.dart';
import '../components/profile_form.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        showBlueShadow: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithDescription(),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal information',
                      style: headLine4Black,
                    ),
                    SizedBox(height: 15),
                    ProfileForm(),
                  ],
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        )
      ),
    );
  }
}