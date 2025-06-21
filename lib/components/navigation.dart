import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_warisan/pages/explore.dart';
import 'package:my_warisan/pages/home.dart';
import 'package:my_warisan/pages/favorite.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    ExplorePage(),
    FavoritePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.pinkAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.camera, size: 30),
          Icon(Icons.favorite, size: 30),
        ],
        onTap: onItemTapped,
        index: selectedIndex,
      ),
    );
  }
}
