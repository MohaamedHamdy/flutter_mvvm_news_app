import 'package:flutter/cupertino.dart';

class Dimensions {
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double heightPercentage(BuildContext context, double percentage) =>
      screenHeight(context) * percentage / 100;

  static double widthPercentage(BuildContext context, double percentage) =>
      screenWidth(context) * percentage / 100;
}
