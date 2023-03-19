import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/category_screen.dart';
import 'package:medicare_health_app/screens/home_screen.dart';
import 'package:medicare_health_app/screens/search_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    SearchScreen(),
    CategoryScreen(),
  ];

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  int get selectedIndex {
    return _selectedIndex;
  }

  get cureentScreen {
    return _screens;
  }
}
