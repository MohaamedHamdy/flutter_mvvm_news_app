import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/features/authentication/presentation/view/widgtes/forget_password_widget.dart';
import 'package:news_app2/features/authentication/presentation/view/widgtes/log_in_third_section.dart';
import 'log_in_first_section.dart';
import 'log_in_second_section.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: FirstSection(),
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
