import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/router.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/core/widgets/custom_button.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_slider.dart';
import 'package:news_app2/features/onBoarding/presentation/widgets/on_boarding_text.dart';

class SecondSection extends StatelessWidget {
  const SecondSection(
      {Key? key, required this.index, required this.onPressed, required this.previous})
      : super(key: key);
  final int index;
  static List buttonText = ['Next', 'Next', 'Get Started'];
  final Function() onPressed;
  final Function() previous;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnBoardingText(
            index: index,
          ),
          SizedBox(
            height: Dimensions.heightPercentage(context, 10),
          ),
          // Spacer(),
          Row(
            children: [
              OnBoardingSlider(index: index),
              const Spacer(),
              TextButton(
                onPressed: index == 0 ? () {} : previous,
                child: Text(
                  'Back',
                  style: AppStyle.style16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kPlaceHolder,
                  ),
                ),
              ),
              CustomButton(
                onPressed: index == 2 ? () {Navigator.pushNamed(context, AppRouter.kLogInScreen);} : onPressed,
                text: buttonText[index],
                width: index == 2
                    ? Dimensions.widthPercentage(context, 30)
                    : Dimensions.widthPercentage(context, 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
