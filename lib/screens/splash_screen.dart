import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/assets.dart';
import 'package:flutter_tic_tac_toe/widgets/background_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Center(
        child: Image.asset(Assets.logo),
      ),
    );
  }
}
