import 'package:course_flutter_practice2/beginning.dart';
import 'package:course_flutter_practice2/home.dart';
import 'package:course_flutter_practice2/product/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return Cart();
    },
    child:MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Beginning(),
    ));
  }
}
