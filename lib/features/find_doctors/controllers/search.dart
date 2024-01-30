import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorSearchController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final List<Map<String, dynamic>> _doctorsList = [
    {
      'name': 'Dr. Shruti Kedia',
      'specialty': 'Tooths Dentist',
      'experience': 7,
      'image': 'assets/images/doctor 4.png',
      'nextAvailableTime': '10:00 AM tomorrow',
      'like': true,
      'statistics': {'rating': 87, 'stories': 69},
    },
    {
      'name': 'Dr. John Doe',
      'specialty': 'Orthopedic Surgeon',
      'experience': 10,
      'image': 'assets/images/doctor 3.png',
      'nextAvailableTime': '02:30 PM tomorrow',
      'like': false,
      'statistics': {'rating': 120, 'stories': 90},
    },
    {
      'name': 'Dr. Alice Smith',
      'specialty': 'Cardiologist',
      'experience': 8,
      'image': 'assets/images/doctor 2.png',
      'nextAvailableTime': '09:15 AM tomorrow',
      'like': true,
      'statistics': {'rating': 95, 'stories': 75},
    },
    {
      'name': 'Dr. Robert Johnson',
      'specialty': 'Pediatrician',
      'experience': 12,
      'image': 'assets/images/doctor.jpg',
      'nextAvailableTime': '01:00 PM tomorrow',
      'like': false,
      'statistics': {'rating': 150, 'stories': 80},
    },
  ];

  late List<Map<String,dynamic>> selectedDoctors;

  @override
  void onInit() {
    selectedDoctors = _doctorsList;
    super.onInit();
  }

  void updateSearchedDoctors(String value){
    selectedDoctors = _doctorsList
      .where((element) {
        final name = element['name'] as String;
        return name
          .toLowerCase()
          .contains(value.toLowerCase());
      })
      .toList();
    update();
  }
}