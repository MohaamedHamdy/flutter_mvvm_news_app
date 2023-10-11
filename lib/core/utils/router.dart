import 'package:flutter/material.dart';
import 'package:news_app2/features/home/presentation/home_screen.dart';
import 'package:news_app2/features/onBoarding/presentation/splash_screen.dart';

class AppRouter {

  static const kHomeScreen = '/homeScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
