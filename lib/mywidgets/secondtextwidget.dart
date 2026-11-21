import 'package:flutter/material.dart';

class Secondtextwidget extends StatelessWidget {
  final String text;
  const Secondtextwidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 186, 9, 9),
      ),
    );
  }
}
