import 'package:flutter/material.dart';
import 'package:pedagang/in_app/home/homepage.dart';
import 'package:pedagang/in_app/notif/notification.dart';
import 'package:pedagang/in_app/profile/profil.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Notif(),
    ProfileScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        indicatorColor: Color(0xFFe3724b),
        inactiveColor: Colors.black,
        activeColor: Color(0xFFe3724b),
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          TitledNavigationBarItem(
            title: Text('Beranda'),
            icon: Icons.home,
          ),
          TitledNavigationBarItem(
            title: Text('Notifikasi'),
            icon: Icons.notifications,
          ),
          TitledNavigationBarItem(
            title: Text("Profil"),
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}