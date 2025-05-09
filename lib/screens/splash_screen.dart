import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/assets.dart';
import 'package:flutter_tic_tac_toe/screens/home_screen.dart';
import 'package:flutter_tic_tac_toe/screens/user_name_screen.dart';
import 'package:flutter_tic_tac_toe/widgets/background_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      bool isNewUser = true;
      if(isNewUser){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>UserNameScreen()));
      }else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
      }

    });
    super.initState();
  }
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
