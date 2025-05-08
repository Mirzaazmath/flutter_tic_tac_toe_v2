import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';
class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      alignment: Alignment.center,
      child: NiceButtons(
        startColor: Color(0xffb85fff),
        endColor:Color(0xffab50f4),
        borderColor: Color(0xff9023e8),
        borderRadius: 32,
        stretch: false,
        gradientOrientation: GradientOrientation.Horizontal,
        onTap: (finish) {
          print('On tap called');
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
