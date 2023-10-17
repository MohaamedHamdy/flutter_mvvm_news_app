import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/features/authentication/presentation/view/widgtes/log_in_second_section.dart';

import '../forget_password_widget.dart';
import '../log_in_third_section.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello!',
                    style: AppStyle.style24.copyWith(
                      fontSize: 48,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    'Signup to get Started',
                    style: AppStyle.style20.copyWith(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.heightPercentage(context, 6),
            ),
            const Padding(
               padding: EdgeInsets.only(left: 20.0, right: 20.0),
               child: SecondSection(),
             ),
            const ForgetPasswordWidget(),
            const ThirdSection(),
          ],
        ),
      ),
    );
  }
}
