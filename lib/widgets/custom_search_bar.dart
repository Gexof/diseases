import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/models/article_model.dart';

class CustomSearchBar extends StatefulWidget {
  final List<Article> articles;
  const CustomSearchBar({
    required this.articles,
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _searchFieldController.addListener(() {
      setState(() {});
    });

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
          suffixIcon: _searchFieldController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _searchFieldController.clear();
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
      ),
    );
  }
}
