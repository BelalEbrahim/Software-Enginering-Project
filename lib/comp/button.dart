import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color btnColor;
  final String txt; // Use lowercase 'text' for consistency
  final Color textColor;
  final void Function()?onPressed;

  const Button({
    super.key,
    required this.txt,
    required this.btnColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor),
        ),
        child: Text( // Assuming Txt displays text
           txt, // Use 'this' to avoid shadowing
          style: TextStyle(
            color: textColor,
            fontFamily: 'Inter',
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
