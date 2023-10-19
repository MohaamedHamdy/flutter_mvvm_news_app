// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/core/utils/dimensions.dart';
import 'package:news_app2/core/utils/styles.dart';
import 'package:news_app2/core/widgets/trending_loading.dart';
import 'package:news_app2/features/home/presentation/viewModel/cubit/news_cubit.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is FetchNewsSuccess) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 14.0, right: 14, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: Dimensions.heightPercentage(context, 20),
                  width: Dimensions.widthPercentage(context, 88),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            NetworkImage(state.newsModel[1].urlToImage ?? '')),
                  ),
                ),
                Text(
                  state.newsModel[0].author == null
                      ? ''
                      : state.newsModel[0].author!,
                  style: AppStyle.style12,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  state.newsModel[0].title ?? 'No Title',
                  style: AppStyle.style16
                      .copyWith(color: Colors.white.withOpacity(0.7)),
                ),
                NewsProviderRow(
                  provider: state.newsModel[0].source!.name!,
                ),
              ],
            ),
          );
        } else if (state is FetchNewsFailure) {
          return Text(state.errorMessage);
        } else {
          return const TrendingLoading();
        }
      },
    );
  }
}

class NewsProviderRow extends StatelessWidget {
  const NewsProviderRow({
    Key? key,
    required this.provider,
  }) : super(key: key);
  final String provider;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          provider,
          style: AppStyle.style12,
        ),
        const SizedBox(
          width: 8,
        ),
        Icon(
          Icons.watch_later_outlined,
          color: Colors.white.withOpacity(0.4),
          size: 16,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          '4 hours ago',
          style: AppStyle.style12,
        ),
      ],
    );
  }
}
