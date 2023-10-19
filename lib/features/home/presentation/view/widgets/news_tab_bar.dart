import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/features/home/presentation/viewModel/cubit/news_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/sports_cubit/sports_cubit.dart';

import 'news_item.dart';
// import 'news_list_view.dart';

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
            // children: categories.map((e) => const NewsListView()).toList(),
            children: [
              BlocBuilder<NewsCubit, NewsState>(
                builder: (context, state) {
                  if (state is FetchNewsSuccess) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                        itemCount: 1,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return NewsItem(
                            newsModel: state.newsModel[index],
                          );
                        },
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              BlocBuilder<SportsCubit, SportsState>(
                builder: (context, state) {
                  if (state is FetchSportsSuccess) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                        itemCount: 1,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return NewsItem(
                            newsModel: state.newsModel[index],
                          );
                        },
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
