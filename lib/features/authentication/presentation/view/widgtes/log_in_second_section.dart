
import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';

import 'custom_auth_rich_text.dart';

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