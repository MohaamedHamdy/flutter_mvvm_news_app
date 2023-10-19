
import 'package:flutter/material.dart';

import 'news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const NewsItem();
          }),
    );
  }
}
