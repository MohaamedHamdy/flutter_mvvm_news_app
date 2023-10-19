
import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

import 'trending_item.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Dimensions.heightPercentage(context, 10),
            width: Dimensions.heightPercentage(context, 10),
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Europe',
                style: AppStyle.style14,
              ),
              SizedBox(
                width: Dimensions.widthPercentage(context, 60),
                child: Text(
                  'Ukraine\'s President Zelensky to BBC: Blood money being paid',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStyle.style16
                      .copyWith(color: Colors.white.withOpacity(0.7)),
                ),
              ),
              const NewsProviderRow(),
            ],
          ),
        ],
      ),
    );
  }
}
