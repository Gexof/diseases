import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 32,
        left: 20,
        right: 23,
      ),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: Color(0xffDDEAF3)),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: SvgPicture.asset(
            'assets/icons/search.svg',
            fit: BoxFit.scaleDown,
            colorFilter: const ColorFilter.mode(
              grayColor,
              BlendMode.srcIn,
            ),
          ),
          suffixIcon: SvgPicture.asset(
            'assets/icons/x-circle.svg',
            fit: BoxFit.scaleDown,
            colorFilter: const ColorFilter.mode(
              grayColor,
              BlendMode.srcIn,
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: grayColor,
          ),
        ),
      ),
    );
  }
}
