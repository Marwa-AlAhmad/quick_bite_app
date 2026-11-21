import 'package:course_flutter_practice2/home.dart';
import 'package:flutter/material.dart';
import 'package:course_flutter_practice2/profile.dart';
import 'package:course_flutter_practice2/search.dart';
import 'package:course_flutter_practice2/shoppingcart.dart';

class Beginning extends StatefulWidget {
  const Beginning({super.key});

  @override
  State<Beginning> createState() => _BeginningState();
}

class _BeginningState extends State<Beginning> {
   int selectedIndex = 0;
  final List<Widget> screens = [
    const Home(),
    const Search(),
    const Shoppingcart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 186, 9, 9),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30),
            label: "",
          ),
        ],
      ),
    );
  }
}