import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../controllers/comments.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    super.key,
    required this.commentController,
  });

  final CommentController commentController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(27)),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => commentController.addComment(),
            child: Container(
              height: 44,
              width: 44,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              child: SvgPicture.asset('assets/icons/send_message.svg')
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextField(
              controller: commentController.commentController,
              cursorColor: primaryColor,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Add Comment.....',
                hintStyle: headLine3Grey,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: SvgPicture.asset('assets/icons/smile.svg')
          ),
          const SizedBox(width: 15)
        ],
      ),
    );
  }
}