import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/splash_screen.dart';
import 'package:flutter_tic_tac_toe/screens/user_name_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Digitalt'
      ),
      home: UserNameScreen(),
    );
  }
}
