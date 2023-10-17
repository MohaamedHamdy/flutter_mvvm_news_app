import 'package:flutter/material.dart';
import 'package:news_app2/features/authentication/presentation/view/widgtes/signup/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBody(),
    );
  }
}
