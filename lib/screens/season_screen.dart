import 'package:flutter/material.dart';
import 'package:medicare_health_app/widgets/custom_app_bar.dart';

import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';

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
            GridBuilder(
              gridMap: gridMap,
              itemCount: gridMap.length,
              itemBuilder: (context, index) {
                return SquareCard(
                  alphabet: "${gridMap[index]['alphabet']}",
                  title: "${gridMap[index]['title']}",
                  height: 124,
                  width: 167,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
