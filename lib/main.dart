import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/home_screen.dart';
import 'package:flutter_tic_tac_toe/screens/scan_player_screen.dart';
import 'package:flutter_tic_tac_toe/screens/splash_screen.dart';
import 'package:flutter_tic_tac_toe/screens/user_name_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 37:39
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Digitalt'
      ),
      home: ScanPlayerScreen(),
    );
  }
}
