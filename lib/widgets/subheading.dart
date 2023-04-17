import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class Subheading extends StatelessWidget {
  const Subheading({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return onTap != null
        ? Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 24,
              top: 45,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: subHeadings,
                    fontWeight: FontWeight.w400,
                    color: primaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 22,
                  top: 32,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: subHeadings,
                    fontWeight: FontWeight.w400,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          );
  }
}
