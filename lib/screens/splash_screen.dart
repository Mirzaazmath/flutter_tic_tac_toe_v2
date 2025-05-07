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
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.2, -0.4),
            child: Image.asset(Assets.logo),
          ),
          Align(
            alignment: Alignment(0, 0.6),
            child: Text("Loading...",style: TextStyle(color: Colors.white38,fontSize: 30),)
          ),
        ],
      ),
    );
  }
}
