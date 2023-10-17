import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/dimensions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 6, top: 10, bottom: 4),
      child: Container(
        height: Dimensions.heightPercentage(context, 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromRGBO(58, 59, 60, 1),
        ),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.filter_list),
            hintText: 'Search',
            enabledBorder: colorlessBorder,
            focusedBorder: colorlessBorder,
          ),
        ),
      ),
    );
  }
}
