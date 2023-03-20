import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/home_screen.dart';
import 'package:medicare_health_app/screens/search_screen.dart';

import '../screens/seasons_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    SeasonsScreen(),
  ];

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  int get selectedIndex {
    return _selectedIndex;
  }

  List<Widget> get cureentScreen {
    return _screens;
  }
}
