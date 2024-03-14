import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/presentation/layout/default_layout.dart';
import 'package:movie_app/presentation/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToHomeScreen();
  }

  void _goToHomeScreen() {
    Future.delayed(
      const Duration(milliseconds: 1000),
      () {
        context.goNamed(HomeScreen.route);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Center(child: Text('WELCOME~')),
    );
  }
}
