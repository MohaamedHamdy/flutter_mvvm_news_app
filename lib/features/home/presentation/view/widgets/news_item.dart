// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/features/home/data/models/news_model.dart';

import 'trending_item.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
    required this.newsModel,
  }) : super(key: key);
  final NewsModel newsModel;
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
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(newsModel.urlToImage ?? ''),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsModel.author ?? 'Author name is not available',
                style: AppStyle.style14,
              ),
              SizedBox(
                width: Dimensions.widthPercentage(context, 60),
                child: Text(
                  newsModel.title ?? 'No title',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStyle.style16
                      .copyWith(color: Colors.white.withOpacity(0.7)),
                ),
              ),
              NewsProviderRow(
                provider:
                    newsModel.source?.name ?? 'Provider name is not available',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
