import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/constants.dart';
import 'package:news_app2/core/utils/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
        () => Navigator.pushNamed(context, AppRouter.kOnBoardingScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          '$imagesPath/logo.png',
        ),
      ),
    );
  }
}
