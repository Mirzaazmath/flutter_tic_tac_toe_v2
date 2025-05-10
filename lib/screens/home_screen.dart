

import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/local_db.dart';
import 'package:flutter_tic_tac_toe/core/p2p_manager.dart';
import 'package:flutter_tic_tac_toe/screens/scan_player_screen.dart';

import '../core/assets.dart';
import '../core/constants/enums.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_chip_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChipWidget(title: "WELCOME BACK ${LocalDB.userName}"),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Center(child: Image.asset(Assets.logo)),
              ),
            ),
            CustomButton(title: "Play Game!", buttonStyleType: ButtonStyleType.green, onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanPlayerScreen(deviceType: DeviceType.browser,)));
            },),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
