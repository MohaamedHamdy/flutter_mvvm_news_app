import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

import 'custom_app_bar.dart';
import 'custom_search_bar.dart';
import 'custom_trending_row.dart';
import 'trending_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          CustomAppBar(),
          CustomSearchBar(),
          CustomTrendingRow(),
          TrendingItem(),
          CustomLatestRow(),
          HomeNewsTabBar(),
        ],
      ),
    );
  }
}

class HomeNewsTabBar extends StatefulWidget  {
  const HomeNewsTabBar({Key? key}) : super(key: key);

  @override
  State<HomeNewsTabBar> createState() => _HomeNewsTabBarState();
}

class _HomeNewsTabBarState extends State<HomeNewsTabBar> with TickerProviderStateMixin{
  List categories = ['All','Sports','Politics','Health','Science','Travel','Business'];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: categories.length, vsync: this);
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: kPrimaryColor,
          labelStyle: AppStyle.style16,
          controller: tabController,
            tabs: const [
          Text('All'),
          Text('Sports'),
          Text('Politics'),
          Text('Health'),
          Text('Science'),
          Text('Travel'),
          Text('Business'),
        ]),

      ],
    );

  }
}
