import 'package:find_doctor_app/commun/widgets/simple_landing_screen.dart';
import 'package:flutter/material.dart';

class EnableLocationServices extends StatelessWidget {
  const EnableLocationServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleLandingScreen(
        title: 'Enable Location Services', 
        image: 'assets/images/location.svg', 
        mainText: 'location', 
        subText: 'Your location services are switched off. Please enable location, to help us serve better', 
        buttontext: 'Enable Location', 
        onPressed: (){}
      ),
    );
  }
}