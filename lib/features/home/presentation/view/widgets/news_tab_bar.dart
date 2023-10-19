
import 'package:flutter/material.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

import 'news_list_view.dart';

class HomeNewsTabBar extends StatelessWidget {
  final List categories;

  const HomeNewsTabBar({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: kPrimaryColor,
          labelStyle: AppStyle.style16,
          tabs: categories
              .map(
                (category) => Tab(icon: Text(category)),
          )
              .toList(),
        ),
        SizedBox(
          height: Dimensions.screenHeight(context),
          child: TabBarView(
            children: categories.map((e) => const NewsListView()).toList(),
          ),
        ),
      ],
    );
  }
}
