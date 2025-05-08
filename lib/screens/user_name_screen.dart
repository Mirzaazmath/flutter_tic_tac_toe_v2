import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/widgets/background_widget.dart';
import 'package:flutter_tic_tac_toe/widgets/custom_button.dart';
import 'package:flutter_tic_tac_toe/widgets/custom_chip_widget.dart';

import '../widgets/custom_textfeild.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(children: [
          CustomChipWidget(title: "Enter Player Name"),
          Expanded(
              flex: 3,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PLAYER NAME",style: TextStyle(fontSize: 26,color: Colors.white),),
                      SizedBox(height: 10,),
                      CustomTextField(
                        controller: _controller,
                      )

                    ],
                  ),
                ),
              )),
          CustomButton(title: "Continue", buttonStyleType: ButtonStyleType.purple, onTap: () {  },),
          SizedBox(height: 50,)
        ]),
      ),

    );
  }
}
