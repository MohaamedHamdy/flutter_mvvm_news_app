import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const FirstSection(),
              SizedBox(
                height: Dimensions.heightPercentage(context, 6),
              ),
              const SecondSection(),
            ],
          ),
        ),
      ),
    );
  }
}

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

class SecondSection extends StatelessWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAuthRichText(text1: 'Username ', text2: '*'),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          color: const Color.fromRGBO(58, 59, 60, 1),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              enabledBorder: colorlessBorder,
              focusedBorder: colorlessBorder,
            ),
          ),
        ),
        const CustomAuthRichText(text1: 'Password ', text2: '*'),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          color: const Color.fromRGBO(58, 59, 60, 1),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              enabledBorder: colorlessBorder,
              focusedBorder: colorlessBorder,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
        style: AppStyle.style16.copyWith(color: Colors.white.withOpacity(0.4)),
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
