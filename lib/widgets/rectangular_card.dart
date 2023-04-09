import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class RectangularCard extends StatelessWidget {
  final String? img;
  final String? seasonName;
  const RectangularCard({
    required this.img,
    required this.seasonName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      height: 128,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: -2,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        // crossAxisAlignment: ,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            height: 96,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.network(
                img!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 48,
            ),
            child: Text(
              seasonName!.toUpperCase(),
              style: const TextStyle(
                fontSize: mainHeadings,
                color: primaryColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
