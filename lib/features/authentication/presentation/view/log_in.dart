import 'package:flutter/material.dart';
import 'package:news_app2/features/authentication/presentation/view/widgtes/log_in_body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInBody(),
    );
  }
}
