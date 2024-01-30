import 'package:find_doctor_app/commun/widgets/add_patient.dart';
import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/cliped_image.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import '../components/record_form.dart';

class AddRecords extends StatelessWidget {
  const AddRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ScreenTitleAppBar(
                        title: 'Add Records'
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipedImage(familyMember: 'teen'),
                          SizedBox(width: 5),
                          AddPatient(
                            text: 'Add more images',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RecordForm()
                )
              ],
            ),
          )
        )
      ),
    );
  }
}