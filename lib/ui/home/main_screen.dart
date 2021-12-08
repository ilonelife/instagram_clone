import 'package:flutter/material.dart';
import 'package:instaclone/ui/home/account_screen.dart';
import 'package:instaclone/ui/home/home_screen.dart';
import 'package:instaclone/ui/home/tour_screen.dart';
import 'package:instaclone/ui/login/login_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _screens = [
    HomeScreen(),
    TourScreen(),
    AccountScreen(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined), label: 'Tour'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Account'),
          ],
        ));
  }
}
