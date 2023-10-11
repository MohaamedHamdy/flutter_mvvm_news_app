import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
            (sliderIndex) => Container(
          margin: const EdgeInsets.only(right: 4),
          width: MediaQuery.of(context).devicePixelRatio * 7,
          height: MediaQuery.of(context).devicePixelRatio * 6,
          decoration: BoxDecoration(
            color:
            sliderIndex == index ? kPrimaryColor : kPlaceHolder,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
