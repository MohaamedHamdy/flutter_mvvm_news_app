import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_second_section.dart';

import 'on_boarding_first_section.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FirstSection(index: index,),
            SecondSection(index: index),
          ],
        );
      },
    );
  }
}
