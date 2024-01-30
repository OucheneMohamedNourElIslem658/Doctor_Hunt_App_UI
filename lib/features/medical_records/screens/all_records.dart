import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import '../components/records.dart';

class AllRecords extends StatelessWidget {
  const AllRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: Column(
              children: [
                const ScreenTitleAppBar(title: 'All Records'),
                const SizedBox(height: 35),
                Records()
              ],
            ),
          )
        )
      ),
    );
  }
}