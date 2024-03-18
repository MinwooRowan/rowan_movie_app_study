import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/color.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  const DefaultLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.backgroundColor,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
