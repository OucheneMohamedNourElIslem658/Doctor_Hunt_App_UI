import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  const Location({
    super.key,
  });

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-1.273714686916558, 36.81437482476074),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: Get.width,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 30,
          ),
        ]
      ),
      child: const GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        zoomControlsEnabled: false,
      ),
    );
  }
}