import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class Mainheading extends StatelessWidget {
  const Mainheading({
    super.key,
    required this.headingName,
  });

  final String headingName;

  @override
  Widget build(BuildContext context) {
    return Text(
      headingName,
      style: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: mainHeadings,
      ),
    );
  }
}
