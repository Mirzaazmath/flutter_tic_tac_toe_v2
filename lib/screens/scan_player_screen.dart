import 'package:device_scan_animation/device_scan_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/tic_tac_toe_screen.dart';

import '../core/constants/enums.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_chip_widget.dart';

class ScanPlayerScreen extends StatefulWidget {
  const ScanPlayerScreen({super.key});

  @override
  State<ScanPlayerScreen> createState() => _ScanPlayerScreenState();
}

class _ScanPlayerScreenState extends State<ScanPlayerScreen> {
  bool get isUserFound => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChipWidget(title: isUserFound?"USER FOUND": "Scanning..."),
            Expanded(
              flex: 3,
              child: Center(
                child: DeviceScanWidget(
                  gap: 35,
                  layers: 6,
                  nodeType: NodeType.even,
                  newNodesDuration: const Duration(seconds: 5),
                  ringThickness: 3,
                  nodeColor: Colors.lightGreenAccent,
                  scanColor: const Color(0xFFAB50F4),
                ),
              ),
            ),
            CustomButton(
              title: "Start Game!",
              buttonStyleType: ButtonStyleType.green,
              onTap: () {
                if(isUserFound){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TicTacToeScreen()));
                }
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
