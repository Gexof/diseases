import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../widgets/diseases_card.dart';

class SeasonScreen extends StatelessWidget {
  SeasonScreen({super.key});

  final List<Map<String, dynamic>> gridMap = [
    {
      'alphabet': 'A',
      'title': 'A-Diseases',
    },
    {
      'alphabet': 'B',
      'title': 'B-Diseases',
    },
    {
      'alphabet': 'C',
      'title': 'C-Diseases',
    },
    {
      'alphabet': 'D',
      'title': 'D-Diseases',
    },
    {
      'alphabet': 'E',
      'title': 'E-Diseases',
    },
    {
      'alphabet': 'F',
      'title': 'F-Diseases',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Mainheading(headingName: 'Summer'),
            const CustomSearchBar(),
            Subheading(title: 'Summer Searches'),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 16,
                ),
                itemCount: gridMap.length,
                itemBuilder: (context, index) {
                  return DiseasesCard(
                    alphabet: "${gridMap[index]['alphabet']}",
                    title: "${gridMap[index]['title']}",
                    height: 124,
                    width: 167,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
