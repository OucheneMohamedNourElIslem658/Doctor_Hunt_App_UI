import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0EBE7F);
const blackColor = Colors.black;
const greyTextColor = Color(0xFF677294);
const backgroundGrey = Color(0xFF556386);
const blueColor = Color(0xFF56CCF2);
const orangeColor = Color(0xFFF2994A);
const whiteColor = Colors.white; 
const greyColor = Color(0xFFC4C4C4);
const greenLinear1 = Color(0xFF0EBE7E);
const greenLinear2 = Color(0xFF07D9AD);
const greenColor = Color(0xFF219653);
const redColor = Color(0xFFFA002F);
const redColor2 = Color(0xFFEB5757);
const unselectedButtonColor = Color(0xFF858EA9);
const customOutlinedButtonBorderColor1 = Color.fromRGBO(103, 114, 148, 0.10);
const errorRedColor = Color(0xFFFF0000);
const blureGreen = Color(0xFFE7F8F2);
const bluredGreen = Color(0xFFC6EFE5);
const drawerBackgroundColor = LinearGradient(
  colors: [
    Color(0xFF536184),
    Color(0xFF6F7FA1),
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter
);

final blueTypeColor = LinearColor(
  color1:const Color(0xFF2753F3), 
  color2:const Color(0xFF765AFC)
);

final greenTypeColor = LinearColor(
  color1:const Color(0xFF0EBE7E), 
  color2:const Color(0xFF07D9AD)
);

final orangeTypeColor = LinearColor(
  color1:const Color(0xFFFE7F44), 
  color2:const Color(0xFFFFCF68)
);

final redTypeColor = LinearColor(
  color1:const Color(0xFFFF484C), 
  color2:const Color(0xFFFF6C60)
);

class LinearColor {
  final Color color1,color2;
  LinearColor({
    required this.color1,
    required this.color2
  });
}