import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_second_section.dart';

import 'on_boarding_first_section.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FirstSection(index: index,),
            SecondSection(index: index,onPressed: nextPage,previous: previousPage,),
          ],
        );
      },
    );
  }


  void previousPage(){
    if (_pageController.page! > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void nextPage(){
    if (_pageController.page! < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }
}
