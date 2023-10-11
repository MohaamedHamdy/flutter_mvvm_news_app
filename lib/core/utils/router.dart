import 'package:flutter/material.dart';
import 'package:news_app2/features/authentication/presentation/view/log_in.dart';
import 'package:news_app2/features/authentication/presentation/view/sign_up.dart';
import 'package:news_app2/features/home/presentation/view/home_screen.dart';
import 'package:news_app2/features/onBoarding/presentation/on_boarding_screen.dart';
import 'package:news_app2/features/onBoarding/presentation/splash_screen.dart';

class AppRouter {

  static const kHomeScreen = '/homeScreen';
  static const kOnBoardingScreen = '/onBoardingScreen';
  static const kLogInScreen = '/logInScreen';
  static const kSignUpScreen = '/signUpScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case kOnBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case kLogInScreen:
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case kSignUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
    }
    return null;
  }
}
