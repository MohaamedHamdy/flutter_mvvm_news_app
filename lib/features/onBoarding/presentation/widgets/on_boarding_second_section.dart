import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/core/widgets/custom_button.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_slider.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_text.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({Key? key, required this.index}) : super(key: key);
  final int index;
  static List buttonText = ['Next', 'Next', 'Get Started'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnBoardingText(index: index,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            children: [
              OnBoardingSlider(index: index),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Back',
                  style: AppStyle.style16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kPlaceHolder,
                  ),
                ),
              ),
              CustomButton(
                onPressed: () {},
                text: buttonText[index],
                width: index == 2
                    ? MediaQuery.of(context).size.width * 0.30
                    : MediaQuery.of(context).size.width * 0.22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

