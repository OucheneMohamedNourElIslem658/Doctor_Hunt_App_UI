import 'package:find_doctor_app/features/medical_records/screens/all_records.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/bottom_sheet_drag_line.dart';

class UploadPhoto extends StatelessWidget {
  UploadPhoto({super.key});

  final options = [
    {
      'icon' : 'assets/icons/camera.svg',
      'name': 'Take a photo'
    },
    {
      'icon' : 'assets/icons/gallery.svg',
      'name': 'Upload from gallery'
    },
    {
      'icon' : 'assets/icons/file.svg',
      'name': 'Upload files'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(child: BottomSheetDragLine()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const Text(
                  'Add a record',
                  style: headline1Medium,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      options.length, 
                      (index) {
                        final option = options[index];
                        final icon = option['icon'] as String;
                        final name = option['name'] as String;
                        return InkWell(
                          onTap: ()  => Get.to(const AllRecords()),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(icon),
                              const SizedBox(width: 12),
                              Text(
                                name,
                                style: headline23Grey
                              )
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}