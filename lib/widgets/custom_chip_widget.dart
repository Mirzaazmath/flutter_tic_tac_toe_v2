import 'package:flutter/material.dart';
class CustomChipWidget extends StatelessWidget {
  final String title;
  const CustomChipWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.white,width: 4)
      ),
      child: Text(title,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),
    );
  }
}
