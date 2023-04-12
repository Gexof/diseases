import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.title,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/arrow.svg',
          colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
