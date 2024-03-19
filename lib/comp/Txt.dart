import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class txt extends StatelessWidget {
  final String tex;

  const txt({
    super.key,
    required this.tex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        tex,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 48,
          color: Color(0xff08B09E),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
