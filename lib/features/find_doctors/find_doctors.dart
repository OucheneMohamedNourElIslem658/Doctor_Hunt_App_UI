import 'package:find_doctor_app/commun/widgets/search_bar.dart';
import 'package:find_doctor_app/features/find_doctors/controllers/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commun/widgets/background.dart';
import '../../commun/widgets/screen_title_app_bar.dart';
import 'components/searched_doctors.dart';

class FindDoctors extends StatelessWidget {
  FindDoctors({super.key});

  final Size size = Get.size;
  final doctorSearchController = Get.put(DoctorSearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const ScreenTitleAppBar(title: 'Find Doctors'),
                const SizedBox(height: 35),
                MySearchBar(
                  size: size,
                  onClear: () {
                    doctorSearchController
                    .searchController.text = '';
                  },
                  controller: doctorSearchController.searchController,
                  onChanged: (value)
                    => doctorSearchController.updateSearchedDoctors(value),
                ),
                const SizedBox(height: 25),
                SearchedDoctors()
              ],
            ),
          ),
        ),
      ),
    );
  }
}