import 'package:flutter/material.dart';
import 'package:medicare_health_app/providers/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var navigationProvider = Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: navigationProvider.cureentScreen[navigationProvider.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationProvider.selectedIndex,
        onTap: (value) {
          navigationProvider.selectedIndex = value;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
        ],
      ),
    );
  }
}
