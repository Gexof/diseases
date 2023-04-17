import 'package:flutter/material.dart';
import 'package:medicare_health_app/constants/sizes.dart';

import '../../../constants/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(width: 11),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: contentHeadings,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Dr.Mohamed',
                  style: TextStyle(
                    fontSize: contentHeadings,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Logo',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}
