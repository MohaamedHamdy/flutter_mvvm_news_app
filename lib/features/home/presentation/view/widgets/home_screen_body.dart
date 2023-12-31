import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/core/utils/api_service.dart';
// import 'package:news_app2/core/utils/service_locator.dart';
import 'package:news_app2/features/home/data/repo/news_repo_implementation.dart';
import 'package:news_app2/features/home/presentation/viewModel/business_cubit/business_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/cubit/news_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/health_cubit/health_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/politics_cubit/politics_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/science_cubit/science_cubit.dart';
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
        BlocProvider(
          create: (context) => HealthCubit(NewsRepoImpl(ApiService(dio: Dio())))
            ..fetchHealthNews(),
        ),
        BlocProvider(
          create: (context) =>
              PoliticsCubit(NewsRepoImpl(ApiService(dio: Dio())))
                ..fetchPoliticsNews(),
        ),
        BlocProvider(
          create: (context) =>
              ScienceCubit(NewsRepoImpl(ApiService(dio: Dio())))
                ..fetchSceinceNews(),
        ),
        BlocProvider(
          create: (context) =>
              BusinessCubit(NewsRepoImpl(ApiService(dio: Dio())))
                ..fetchBusinessNews(),
        ),
      ],
      child: Scaffold(
        body: DefaultTabController(
          length: categories.length,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                // physics: const BouncingScrollPhysics(),
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
        ),
      ),
    );
  }
}
