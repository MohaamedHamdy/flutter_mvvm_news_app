import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/styles.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({Key? key, required this.index}) : super(key: key);

  final int index;

  static List title = [
    'Lorem Ipsum is simply dummy',
    'Lorem Ipsum is simply dummy',
    'Lorem Ipsum is simply dummy',
  ];
  static List subTitle = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.70,
          child: Text(
            title[index],
            style: AppStyle.style24,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Text(
            subTitle[index],
            style: AppStyle.style16.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
