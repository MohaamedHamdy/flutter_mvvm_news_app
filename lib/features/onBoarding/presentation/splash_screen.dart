import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          '$images/logo.png',
        ),
      ),
    );
  }
}
