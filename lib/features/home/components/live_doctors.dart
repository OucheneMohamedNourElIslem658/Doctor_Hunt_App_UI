import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../live/live.dart';

class LiveDoctors extends StatelessWidget {
  const LiveDoctors({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LiveListTitle(),
        const SizedBox(height: 20),
        ListLives(size: size),
      ],
    );
  }
}

class LiveListTitle extends StatelessWidget {
  const LiveListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Live Doctors",
      style: headline7Black
    );
  }
}

class ListLives extends StatelessWidget {
  const ListLives({
    super.key, 
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5, 
          (index) => LiveCard(size: size,)
        )
      ),
    );
  }
}

class LiveCard extends StatelessWidget {
  const LiveCard({
    super.key, 
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Live()),
      child: Container(
        height: 168,
        width: 116,
        margin: const EdgeInsets.only(right: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          image: DecorationImage(
            image: AssetImage("assets/images/doctor2.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              right: 10,
              top: 10,
              child: LiveOnTicket(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 50,
              child: SvgPicture.asset('assets/icons/playIcon.svg')
            )
          ],
        ),
      ),
    );
  }
}

class LiveOnTicket extends StatelessWidget {
  const LiveOnTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 40,
      decoration: const BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.all(Radius.circular(3))
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.circle,size: 6,color: whiteColor),
          SizedBox(width: 3),
          Text(
            "LIVE",
            style: headline8
          ),
        ],
      ),
    );
  }
}