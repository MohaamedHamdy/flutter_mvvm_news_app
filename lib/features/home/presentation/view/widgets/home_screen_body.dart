import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';

import 'custom_app_bar.dart';
import 'custom_search_bar.dart';
import 'custom_trending_row.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomAppBar(),
          CustomSearchBar(),
          CustomTrendingRow(),
        ],
      ),
    );
  }
}
