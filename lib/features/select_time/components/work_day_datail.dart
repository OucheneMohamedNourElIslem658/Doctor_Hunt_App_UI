import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'reservation_buttons.dart';
import 'slots_list.dart';

class WorkDayDetail extends StatefulWidget {
  const WorkDayDetail({super.key});

  @override
  State<WorkDayDetail> createState() => _WorkDayDetailState();
}

class _WorkDayDetailState extends State<WorkDayDetail> {
  final tabController = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: tabController,
        children: [
          ReservingTap(
            reserveSlot: () async => await tabController.animateToPage(
              1,
              duration: const Duration(milliseconds: 300), 
              curve: Curves.easeOut
            ),
            contactClient: (){},
          ),
          SingleChildScrollView(
            child: SlotsList()
          )
        ],
      ),
    );
  }
}

class ReservingTap extends StatelessWidget {
  const ReservingTap({
    super.key, 
    required this.reserveSlot, 
    required this.contactClient,
  });

  final VoidCallback reserveSlot;
  final VoidCallback contactClient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'No slots available',
          style: headLine3Grey
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: CustomElevatedButton(
            text: 'Next availability on wed, 24 Feb',
            onPressed: reserveSlot
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'OR',
          style: headLine3Grey
        ),
        const SizedBox(height: 15),
        CustomOutlinedButton(onPressed: contactClient)
      ],
    );
  }
}