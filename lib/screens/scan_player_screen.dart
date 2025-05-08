import 'package:device_scan_animation/device_scan_animation.dart';
import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_chip_widget.dart';

class ScanPlayerScreen extends StatelessWidget {
  const ScanPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChipWidget(title: "Scanning..."),
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
              onTap: () {},
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
