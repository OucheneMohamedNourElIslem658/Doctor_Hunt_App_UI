import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class CommentController extends GetxController {
  final commentController = TextEditingController();
  List<Map<String,dynamic>> initialList = [
    {
      'name': 'Everhart Tween',
      'comment': 'Thanks for sharing, doctor! 🙏👨‍⚕️',
      'image': 'assets/images/person1.png'
    },
    {
      'name': 'Avery Sunshine',
      'comment': 'Great info! 🌟 Thanks for sharing, doctor! 👨‍⚕️',
      'image': 'assets/images/person2.png'
    },
    {
      'name': 'Harper Joy',
      'comment': 'Awesome insights! 🤓 Appreciate it, doc! 🙌',
      'image': 'assets/images/person3.png'
    },
    {
      'name': 'Piper Gratitude',
      'comment': 'Very helpful! 🩺 Grateful for your share, doctor! 🌈',
      'image': 'assets/images/person4.png'
    },
  ];

  void addComment(){ 
    if (commentController.text != '') {
      initialList.add(
        {
          'name': 'Samantha Warren',
          'comment': commentController.text.trim(),
          'image': 'assets/images/doctor1.png'
        }
      );
      update();
      commentController.text = '';
    }
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scrollToBottom();
    });
  }

  final commentsScrollController = ScrollController();

  void scrollToBottom() async {
    await commentsScrollController.animateTo(
      commentsScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void onClose() {
    commentController.dispose();
    commentsScrollController.dispose();
    super.onClose();
  }
}