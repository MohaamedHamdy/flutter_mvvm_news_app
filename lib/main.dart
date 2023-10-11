import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
