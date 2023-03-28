import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/about_disease_screen.dart';
import 'package:medicare_health_app/widgets/grid_builder.dart';
import 'package:medicare_health_app/widgets/square_card.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../widgets/custom_search_bar.dart';

import '../widgets/mainheading.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Mainheading(headingName: 'Search'),
              const CustomSearchBar(),
              Subheading(title: 'Common Searches'),
              GridBuilder(
                gridMap: gridMap,
                itemCount: gridMap.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AboutDiseaseScreen();
                      }));
                    },
                    child: SquareCard(
                      alphabet: "${gridMap[index]['alphabet']}",
                      title: "${gridMap[index]['title']}",
                      height: 124,
                      width: 167,
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
