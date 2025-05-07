import 'package:flutter/material.dart';
class CustomChipWidget extends StatelessWidget {
  final String title;
  const CustomChipWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.white,width: 4)
      ),
      child: Text(title,style: Theme.of(context).textTheme.bodyLarge,),
    );
  }
}
