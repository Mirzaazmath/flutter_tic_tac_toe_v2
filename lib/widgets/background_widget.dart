import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/constants/colors.dart';

class BackgroundWidget extends StatelessWidget {
 final  Widget child;
  const BackgroundWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.bgGradient),
        child: child,
      ),

    );
  }
}
