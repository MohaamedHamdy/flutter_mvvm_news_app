import 'package:flutter/material.dart';
import 'package:news_app2/features/onBoarding/presentation/splash_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
    return null;
  }
}
