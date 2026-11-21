import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  final String imageUrl;
  const Imagewidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),

        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(15),
      width: 83,
      height: 83,
    );
  }
}
