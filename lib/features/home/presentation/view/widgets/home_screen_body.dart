import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/core/utils/api_service.dart';
import 'package:news_app2/features/home/data/repo/news_repo_implementation.dart';
import 'package:news_app2/features/home/presentation/viewModel/cubit/news_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/sports_cubit/sports_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              NewsCubit(NewsRepoImpl(ApiService(dio: Dio())))..fetchAllNews(),
        ),
        BlocProvider(
          create: (context) => SportsCubit(NewsRepoImpl(ApiService(dio: Dio())))
            ..fetchSportsNews(),
        ),
      ],
      child: Scaffold(
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
      ),
    );
  }
}
