import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';
import '../../commun/widgets/background.dart';
import 'components/close_work_time.dart';
import '../../commun/widgets/doctor_card_2.dart';
import 'components/work_day_datail.dart';

class SelectTime extends StatelessWidget {
  const SelectTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: ScreenTitleAppBar(title: 'Select Time',showButton: false,),
              ),
              const SizedBox(height: 35),
              const DoctorCard2(),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CloseWorkTime(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Today, 23 Feb',
                style: headline7Black
              ),
              const SizedBox(height: 30),
              const WorkDayDetail(),
            ],
          ),
        )
      )
    );
  }
}