import 'package:flutter/material.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/constants/sizes.dart';
import 'package:medicare_health_app/screens/alphabet_screen.dart';
import 'package:medicare_health_app/widgets/square_card.dart';

import '../constants/strings.dart';
import '../widgets/grid_builder.dart';
import '../widgets/subheading.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),

            // Welcome message and Logo
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

            Subheading(
              title: 'Alphabetically',
              isSeaAll: true,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlphabetScreen()));
              },
            ),

            GridBuilder(
              gridMap: preAlphabet,
              itemCount: preAlphabet.length,
              itemBuilder: (context, index) {
                return SquareCard(
                  alphabet: "${preAlphabet[index]['alphabet']}",
                  title: "${preAlphabet[index]['title']}",
                  height: 124,
                  width: 167,
                );
              },
            ),

            Subheading(title: 'Recommended'),

            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                scrollDirection: Axis.horizontal,
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return SquareCard(
                      isItImg: true,
                      img: "${imgs[index]['img']}",
                      title: "${imgs[index]['title']}");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
