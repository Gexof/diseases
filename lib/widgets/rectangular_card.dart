import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../constants/strings.dart';
import '../screens/season_screen.dart';

class RectangularCard extends StatelessWidget {
  final String img;
  final String title;
  final String season;
  const RectangularCard({
    required this.img,
    required this.title,
    required this.season,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SeasonScreen(
                      name: title,
                    )));
      },
      child: Container(
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
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 48,
              ),
              child: Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontSize: mainHeadings,
                  color: primaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
