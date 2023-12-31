import 'package:flutter/material.dart';

const String imagesPath = 'assets/images';

final List<String> images = [
  '$imagesPath/onBoarding1.png',
  '$imagesPath/onBoarding2.png',
  '$imagesPath/onBoarding3.png',
];

const kPrimaryColor = Color.fromRGBO(24, 119, 224, 1);
const kPlaceHolder = Color.fromRGBO(160, 163, 189, 1);
const kError = Color.fromRGBO(255, 132, 183, 1);

const OutlineInputBorder colorlessBorder =
    OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
