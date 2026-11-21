import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  final String text;
  const Textwidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }
}
