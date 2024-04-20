import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switchbtn extends StatefulWidget {
  const Switchbtn({super.key});

  @override
  State<Switchbtn> createState() => SwitchState();
}

class SwitchState extends State<Switchbtn> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color(0xff08B09E),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
