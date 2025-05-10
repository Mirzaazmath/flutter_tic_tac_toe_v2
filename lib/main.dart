import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/home_screen.dart';
import 'package:flutter_tic_tac_toe/screens/scan_player_screen.dart';
import 'package:flutter_tic_tac_toe/screens/splash_screen.dart';
import 'package:flutter_tic_tac_toe/screens/tic_tac_toe_screen.dart';
import 'package:flutter_tic_tac_toe/screens/user_name_screen.dart';
import 'package:get/get.dart';

import 'core/local_db.dart';
void main() async {
  await LocalDB.initialize();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Digitalt'
      ),
      home: SplashScreen(),
    );
  }
}
