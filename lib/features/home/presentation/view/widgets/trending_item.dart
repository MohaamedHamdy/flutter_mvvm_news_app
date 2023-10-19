
import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14, top: 10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            height: Dimensions.heightPercentage(context, 20),
            width: Dimensions.widthPercentage(context, 88),
            color: Colors.red,
          ),
          Text(
            'Europe',
            style: AppStyle.style12,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Russian warship: Moskva sinks in Black Sea',
            style:
            AppStyle.style16.copyWith(color: Colors.white.withOpacity(0.7)),
          ),
          Row(
            children: [
              Text(
                'BBC News',
                style: AppStyle.style12,
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.watch_later_outlined,
                color: Colors.white.withOpacity(0.4),
                size: 16,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                '4 hours ago',
                style: AppStyle.style12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
