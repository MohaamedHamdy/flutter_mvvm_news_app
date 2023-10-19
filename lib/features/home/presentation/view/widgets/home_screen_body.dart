import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_search_bar.dart';
import 'custom_trending_row.dart';
import 'news_tab_bar.dart';
import 'trending_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);
  static final List categories = [
    'All',
    'Sports',
    'Politics',
    'Health',
    'Science',
    'Travel',
    'Business'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: categories.length,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const CustomAppBar(),
            const CustomSearchBar(),
            const CustomTrendingRow(),
            const TrendingItem(),
            const CustomLatestRow(),
            HomeNewsTabBar(
              categories: categories,
            ),
          ],
        ),
      ),
    );
  }
}
