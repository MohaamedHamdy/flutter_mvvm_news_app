
import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello',
          style: AppStyle.style22.copyWith(fontSize: 48),
        ),
        Text(
          'Again!',
          style: AppStyle.style22.copyWith(fontSize: 48, color: kPrimaryColor),
        ),
        SizedBox(
          height: Dimensions.heightPercentage(context, 2),
        ),
        SizedBox(
          width: Dimensions.widthPercentage(context, 55),
          child: Text(
            'Welcome back you’ve been missed',
            style: AppStyle.style20.copyWith(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
