import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/widgets/background_widget.dart';
import 'package:flutter_tic_tac_toe/widgets/custom_chip_widget.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(children: [
          CustomChipWidget(title: "Enter Player Name"),
        ]),
      ),

    );
  }
}
