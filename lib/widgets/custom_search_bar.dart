import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final _searchFieldController = TextEditingController();
  bool isEmptyString = true;

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
        border: Border.all(color: const Color(0xffDDEAF3)),
      ),
      child: TextField(
        controller: _searchFieldController,
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
          suffixIcon: !isEmptyString
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _searchFieldController.clear();
                      isEmptyString = true;
                    });
                    setState(() {});
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/x-circle.svg',
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      grayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                )
              : null,
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: grayColor,
          ),
        ),
        onChanged: (keywords) {
          if (keywords.isNotEmpty) {
            setState(() {
              isEmptyString = false;
            });
          } else {
            setState(() {
              isEmptyString = true;
            });
          }
        },
      ),
    );
  }
}
