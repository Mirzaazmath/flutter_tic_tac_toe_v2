import 'dart:convert';

import 'package:device_scan_animation/device_scan_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/tic_tac_toe_screen.dart';

import '../core/constants/enums.dart';
import '../core/p2p_manager.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_chip_widget.dart';


class ScanPlayerScreen extends StatefulWidget {
  final DeviceType deviceType;

  const ScanPlayerScreen({super.key, required this.deviceType});

  @override
  State<ScanPlayerScreen> createState() => _ScanPlayerScreenState();
}

class _ScanPlayerScreenState extends State<ScanPlayerScreen> {
  late P2pManager p2pManager;

  @override
  void initState() {
    p2pManager = P2pManager(
        deviceType: widget.deviceType,
        onDevicesStateChanged: () {
          if(mounted) {
            setState(() {});
          }
        },
        onNewMessageReceived: (data) {
          p2pManager.gameState.fields.value = List<Player?>.from(jsonDecode(data['message'])['data']
              .map((e) => e == 0
              ? Player.p1
              : e == 1
              ? Player.p2
              : null)
              .toList());
        });
    super.initState();
  }

  @override
  void dispose() {
    // p2pManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChipWidget(
                title: p2pManager.isUserFound ? 'USER FOUND' : 'SCANNING...'),
            Expanded(
              flex: 4,
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
            if (p2pManager.isUserFound)
              Expanded(
                flex: 2,
                child: Center(
                  child: CustomButton(
                      title: 'START GAME!',
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              TicTacToeScreen(p2pManager: p2pManager),
                        ));
                      },
                      buttonStyleType: ButtonStyleType.green),
                ),
              ),
          ],
        ),
      ),
    );
  }
}