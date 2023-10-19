import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:shimmer/shimmer.dart';

class LatestNewsLoading extends StatelessWidget {
  const LatestNewsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 8, right: 20),
      child: Row(
        children: [
          Container(
            height: Dimensions.heightPercentage(context, 10),
            width: Dimensions.heightPercentage(context, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: Dimensions.widthPercentage(context, 50),
                height: 8,
                color: Colors.grey.withOpacity(0.7),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 8,
                width: Dimensions.widthPercentage(context, 62),
                color: Colors.grey.withOpacity(0.7),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 8,
                width: Dimensions.widthPercentage(context, 62),
                color: Colors.grey.withOpacity(0.7),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                height: 8,
                width: Dimensions.widthPercentage(context, 50),
                color: Colors.grey.withOpacity(0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomLatestShimmer extends StatelessWidget {
  const CustomLatestShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white.withOpacity(0.3),
      highlightColor: Colors.grey.withOpacity(0.3),
      child: const LatestNewsLoading(),
    );
  }
}
