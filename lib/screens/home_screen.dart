import 'package:flutter/material.dart';

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
            CustomChipWidget(title: "WELCOME BACK MIRZA"),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Center(child: Image.asset(Assets.logo)),
              ),
            ),
            CustomButton(title: "Play Game!", buttonStyleType: ButtonStyleType.green, onTap: () {  },),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
