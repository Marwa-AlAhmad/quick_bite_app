import 'package:flutter/material.dart';

class Iconbuttonwidget extends StatelessWidget {
  const Iconbuttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        
      },
      icon: Icon(Icons.add_circle_sharp, color: Colors.green, size: 30),
    );
  }
}
