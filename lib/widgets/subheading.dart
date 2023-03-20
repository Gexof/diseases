import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class Subheading extends StatelessWidget {
  Subheading({
    super.key,
    required this.title,
    this.isSeaAll = false,
  });

  final String title;
  bool isSeaAll;

  @override
  Widget build(BuildContext context) {
    return isSeaAll
        ? Row(
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
              TextButton(
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        : Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: subHeadings,
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                ),
              ),
            ],
          );
  }
}
