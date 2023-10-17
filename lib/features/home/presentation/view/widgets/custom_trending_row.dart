
import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/styles.dart';

class CustomTrendingRow extends StatelessWidget {
  const CustomTrendingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Trending',
            style: AppStyle.style16.copyWith(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w600),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: AppStyle.style14,
              ))
        ],
      ),
    );
  }
}
