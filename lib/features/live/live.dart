import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../commun/widgets/get_back_button.dart';
import '../../commun/widgets/profile_pic.dart';
import 'components/comments_list.dart';

class Live extends StatelessWidget {
  Live({super.key});

  final Size size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Image.asset(
                'assets/images/doctor2.jpg',
                fit: BoxFit.cover
              )
            )
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                stops: [0.0242, 0.9835],
              )
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  CommentsList(),
                  const Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      children: [
                        GetBackButton(),
                        Spacer(),
                        ProfilePic(
                          image: 'assets/images/doctor.jpg',
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}