import 'package:flutter/material.dart';
import 'package:medicare_health_app/providers/bottom_navigation_provider.dart';
import 'package:medicare_health_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../screens/category_screen.dart';
import '../screens/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
  });

  // List<Widget> screens = [
  //   HomeScreen(),
  //   SearchScreen(),
  //   CategoryScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    var navigationProvider = Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      extendBody: true,
      body: navigationProvider.cureentScreen[navigationProvider.selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 23, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              spreadRadius: -5,
              blurRadius: 5,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(85),
          child: BottomNavigationBar(
            currentIndex: navigationProvider.selectedIndex,
            onTap: (value) {
              navigationProvider.selectedIndex = value;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
