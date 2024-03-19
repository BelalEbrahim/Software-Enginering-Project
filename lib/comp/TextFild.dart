import 'package:flutter/material.dart';

class Text_Fild extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const Text_Fild({
    super.key, // Corrected key parameter
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
  }); // Removed unnecessary super

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(300.0),
            borderSide: const BorderSide(width: 8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(300.0),
            borderSide: const BorderSide(color: Color(0xff08B09E), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(300.0),
            borderSide: const BorderSide(color: Color(0xff08B09E), width: 2 ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff08B09E), width: 2 ),
          ),
          suffixIcon:SizedBox(
          width: 60.0,
          height: 60.0,
            child: Icon(
              icon.icon,
              weight: 32,
              color: const Color(0xff08B09E),
            ),
        ),
          labelText: hintText,
          labelStyle: const TextStyle(
            color: Color(0xff08B09E),
            fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
