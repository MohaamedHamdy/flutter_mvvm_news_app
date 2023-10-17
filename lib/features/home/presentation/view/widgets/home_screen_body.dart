import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';

import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomAppBar(),
        ],
      ),
    );
  }
}
