import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/features/live/controllers/comments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/widgets/profile_pic.dart';
import 'comment_text_field.dart';

class CommentsList extends StatelessWidget {
  CommentsList({super.key});

  final commentController = Get.put(CommentController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: (44+20)*4+10,
          child: GetBuilder<CommentController>(
            builder: (_) {
              return ListView.builder(
                controller: commentController.commentsScrollController,
                itemCount: commentController.initialList.length,
                shrinkWrap: true,
                itemBuilder:  (context,index) {
                  final comment = commentController.initialList[index];
                  return Comment(comment: comment);
                }
              );
            }
          ),
        ),
        CommentTextField(commentController: commentController),
      ],
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.comment,
  });

  final Map<String, dynamic> comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ProfilePic(image: comment['image']!,size: 44),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment['name']!,
                  style: headline7White
                ),
                Text(
                  comment['comment']!,
                  style: headLine3White
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}