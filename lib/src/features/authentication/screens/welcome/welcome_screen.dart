import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingScreen()
    );
  }
}