import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/controllers/bottom_navigation_controller.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var navigationProvider = Provider.of<BottomNavigationController>(context);
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
            selectedFontSize: 0,
            currentIndex: navigationProvider.selectedIndex,
            onTap: (value) {
              navigationProvider.selectedIndex = value;
            },
            unselectedItemColor: primaryColor,
            selectedItemColor: Colors.white,
            items: [
              navBarItem('assets/icons/home.svg'),
              navBarItem('assets/icons/search.svg'),
              navBarItem('assets/icons/category.svg'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem navBarItem(String svgPath) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        svgPath,
        colorFilter: const ColorFilter.mode(
          primaryColor,
          BlendMode.srcIn,
        ),
      ),
      label: '',
      activeIcon: Container(
        height: 42,
        width: 42,
        decoration: const BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          svgPath,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
