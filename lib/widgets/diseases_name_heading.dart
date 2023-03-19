import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class DiseasesNameHeading extends StatelessWidget {
  const DiseasesNameHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 31.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Diseases Name',
              style: TextStyle(
                fontSize: contentHeadings,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Container(
              width: 53,
              height: 39,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(child: Text('AR')),
            ),
          )
        ],
      ),
    );
  }
}
