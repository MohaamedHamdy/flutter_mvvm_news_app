import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/core/widgets/latest_news_loading.dart';
import 'package:news_app2/features/home/presentation/view/widgets/news_list_view.dart';
import 'package:news_app2/features/home/presentation/viewModel/business_cubit/business_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/cubit/news_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/health_cubit/health_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/politics_cubit/politics_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/science_cubit/science_cubit.dart';
import 'package:news_app2/features/home/presentation/viewModel/sports_cubit/sports_cubit.dart';

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
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is FetchNewsFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
                  }
                },
              ),
              BlocBuilder<SportsCubit, SportsState>(
                builder: (context, state) {
                  if (state is FetchSportsSuccess) {
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is FetchSportsFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
                  }
                },
              ),
              BlocBuilder<PoliticsCubit, PoliticsState>(
                builder: (context, state) {
                  if (state is FetchPoliticsSuccess) {
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is FetchPoliticsFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
                  }
                },
              ),
              BlocBuilder<HealthCubit, HealthState>(
                builder: (context, state) {
                  if (state is HealthNewsSuccess) {
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is HealthNewsFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
                  }
                },
              ),
              BlocBuilder<ScienceCubit, ScienceState>(
                builder: (context, state) {
                  if (state is FetchScienceSuccess) {
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is FetchScienceFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
                  }
                },
              ),
              BlocBuilder<BusinessCubit, BusinessState>(
                builder: (context, state) {
                  if (state is FetchBusinessSuccess) {
                    return NewsListView(newsModel: state.newsModel);
                  } else if (state is FetchBusinessFailure) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return const CustomLatestShimmer();
                      },
                    );
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
