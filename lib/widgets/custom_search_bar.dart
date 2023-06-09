import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:provider/provider.dart';

import '../controllers/articles_controller.dart';

class CustomSearchBar extends StatefulWidget {
  final bool searchAll;
  const CustomSearchBar({
    this.searchAll = false,
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final _searchFieldController = TextEditingController();
  bool isEmptyString = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ArticlesController>(context, listen: false)
          .searchArticles(searchString: "", searchAll: widget.searchAll);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ArticlesController articlesController =
        Provider.of<ArticlesController>(context);
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
        onChanged: (searchString) {
          switchClearButton(searchString: searchString);
          articlesController.searchArticles(
              searchString: searchString, searchAll: widget.searchAll);
        },
      ),
    );
  }

  void switchClearButton({required String searchString}) {
    if (searchString.isNotEmpty) {
      setState(() {
        isEmptyString = false;
      });
    } else {
      setState(() {
        isEmptyString = true;
      });
    }
  }
}
