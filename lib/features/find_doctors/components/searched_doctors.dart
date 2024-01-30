import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search.dart';
import 'searched_doctor_card.dart';

class SearchedDoctors extends StatelessWidget {
  SearchedDoctors({super.key});

  final searchController = Get.put(DoctorSearchController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DoctorSearchController>(
      builder: (_) {
        var selectedItems = searchController.selectedDoctors;
        return Expanded(
          child: ListView.builder(
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                final doctor = selectedItems[index];
                final name = doctor['name'] as String;
                final speciality = doctor['specialty'] as String;
                final experiance = doctor['experience'] as int;
                final image = doctor['image'] as String ;
                final liked = doctor['like'] as bool;
                final rating = doctor['statistics']['rating'] as int;
                final stories = doctor['statistics']['stories'] as int;
                final availbleTime = doctor['nextAvailableTime'] as String;
                return SearchedDoctorCard(
                  image: image, 
                  name: name, 
                  liked: liked, 
                  speciality: speciality, 
                  experiance: experiance, 
                  rating: rating, 
                  stories: stories, 
                  availbleTime: availbleTime,
                  index: index,
                );
              },
            )
        );
      }
    );
  }
}