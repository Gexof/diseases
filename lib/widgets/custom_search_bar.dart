import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: const Color(0xffDDEAF3)),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffBAC6D5),
          ),
          suffixIcon: Icon(
            Icons.close,
            color: Color(0xffBAC6D5),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Color(0xffADBCCE),
          ),
        ),
      ),
    );
  }
}
