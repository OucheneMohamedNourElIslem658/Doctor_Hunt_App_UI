import 'package:find_doctor_app/features/diagnostics_tests/diagnostics_tests.dart';
import 'package:find_doctor_app/features/help_center/help_center.dart';
import 'package:find_doctor_app/features/medical_records/screens/medical_records.dart';
import 'package:find_doctor_app/features/medicine_orders/medicine_orders.dart';
import 'package:find_doctor_app/features/patient_details/patient_details.dart';
import 'package:find_doctor_app/features/policy/policy.dart';
import 'package:find_doctor_app/features/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavigationBarController extends GetxController {
  final items = [
    {
      'name': 'My Doctors',
      'icon': 'assets/icons/person.svg',
      'isSelected': true,
      'onPressed': null
    },
    {
      'name': 'Medical Records',
      'icon': 'assets/icons/records.svg',
      'isSelected': false,
      'onPressed': const MedicalRecords()
    },
    {
      'name': 'Payments',
      'icon': 'assets/icons/payment.svg',
      'isSelected': false,
      'onPressed':  const PatientDetails()
    },
    {
      'name': 'Medicine Orders',
      'icon': 'assets/icons/orders.svg',
      'isSelected': false,
      'onPressed': const MedicineOrder()
    },
    {
      'name': 'Test Bookings',
      'icon': 'assets/icons/booking.svg',
      'isSelected': false,
      'onPressed': const DiagnosticsTests()
    },
    {
      'name': 'Privacy & Policy',
      'icon': 'assets/icons/policy.svg',
      'isSelected': false,
      'onPressed': const Policy()
    },
    {
      'name': 'Help Center',
      'icon': 'assets/icons/help.svg',
      'isSelected': false,
      'onPressed': const HelpCenter()
    },
    {
      'name': 'Settings',
      'icon': 'assets/icons/settings.svg',
      'isSelected': false,
      'onPressed': const Settings()
    },
  ];

  void selectItem(int index){
    final navigation = items[index]['onPressed'] as Widget?;
    for (var i = 0; i < items.length; i++) {
      items[i]['isSelected'] = false;
    }
    items[index]['isSelected'] = true;
    if (navigation != null) {
      Get.to(navigation);
    }
    update();
  }
}