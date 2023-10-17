import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          '$imagesPath/logo.png',
          height: Dimensions.heightPercentage(context, 8),
        ),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white.withOpacity(0.3),
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined)))
      ],
    );
  }
}
