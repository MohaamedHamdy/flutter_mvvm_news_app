// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app2/features/home/data/models/news_model.dart';

import 'news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    Key? key,
    required this.newsModel,
  }) : super(key: key);
  final List<NewsModel> newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        itemCount: 2,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return NewsItem(
            newsModel: newsModel[index],
          );
        },
      ),
    );
  }
}
