import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:shimmer/shimmer.dart';

class TrendingLoading extends StatelessWidget {
  const TrendingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white.withOpacity(0.3),
      highlightColor: Colors.grey.withOpacity(0.3),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 14.0, right: 14, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              height: Dimensions.heightPercentage(context, 20),
              width: Dimensions.widthPercentage(context, 88),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              height: 8,
              width: Dimensions.widthPercentage(context, 40),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              height: 8,
              width: Dimensions.widthPercentage(context, 80),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              height: 8,
              width: Dimensions.widthPercentage(context, 40),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
