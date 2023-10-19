import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/router.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/core/widgets/custom_button.dart';

import 'platform_continue_with.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
          child: CustomButton(onPressed: () {
            Navigator.pushNamed(context, AppRouter.kHomeScreen);
          }, text: 'Login'),
        ),
        Center(
          child: Text(
            'or continue with',
            style: AppStyle.style14,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
          child: Row(
            children: [
              PlatformContinueWithWidget(
                  platformName: 'Facebook',
                  widget: Icon(Icons.facebook_rounded)),
              PlatformContinueWithWidget(
                  platformName: 'Google',
                  widget: Icon(FontAwesomeIcons.google)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'don\'t have an account?',
              style: AppStyle.style14,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.kSignUpScreen);
                },
                child: Text(
                  'Sign up',
                  style: AppStyle.style14.copyWith(color: kPrimaryColor),
                ))
          ],
        ),
      ],
    );
  }
}
