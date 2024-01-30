import 'package:flutter/material.dart';

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(context,child,details) {
    return child;
  }
}