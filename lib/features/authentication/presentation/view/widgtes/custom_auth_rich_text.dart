

import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/styles.dart';

class CustomAuthRichText extends StatelessWidget {
  const CustomAuthRichText({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: AppStyle.style16,
        children: [
          TextSpan(
            text: text2,
            style: AppStyle.style16.copyWith(color: kError),
          ),
        ],
      ),
    );
  }
}