import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/styles.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: true,
            activeColor: kPrimaryColor,
            checkColor: Colors.black,
            onChanged: (value) {},
          ),
          Text(
            'Remember me',
            style: AppStyle.style14,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text('Forget the password?')),
        ],
      ),
    );
  }
}
