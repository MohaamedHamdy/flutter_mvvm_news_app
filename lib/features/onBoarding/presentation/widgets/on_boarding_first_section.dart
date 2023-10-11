
import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(images[index]),
        ),
      ),
    );
  }
}
