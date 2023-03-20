import 'package:flutter/material.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/providers/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
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
        // height: 80,
        margin: const EdgeInsets.only(bottom: 23, left: 20, right: 20),
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
            unselectedItemColor: primaryColor,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.home),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: ''),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
