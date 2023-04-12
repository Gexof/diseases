import 'package:flutter/material.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/constants/sizes.dart';
import 'package:medicare_health_app/screens/alphabet_screen.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/alphabet_grid.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/recommended_list.dart';
import 'package:medicare_health_app/widgets/square_card.dart';

import '../../constants/strings.dart';
import '../../widgets/grid_builder.dart';
import '../../widgets/subheading.dart';
import '../about_disease_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlphabetScreen()));
              },
            ),

            const AlphabetGrid(),

            Subheading(title: 'Recommended'),

            const RecommendedList(),
          ],
        ),
      ),
    );
  }
}
