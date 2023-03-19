import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/about_disease_screen.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/diseases_card.dart';
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
              // mainheading
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 50),
                child: Mainheading(
                  headingName: 'Search',
                ),
              ),

              // Search Bar
              const Padding(
                padding: EdgeInsets.only(
                  left: 17,
                  right: 23,
                  top: 32,
                ),
                child: CustomSearchBar(),
              ),

              //subheading
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32),
                child: Subheading(title: 'Common Searches'),
              ),

              // Grid View
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AboutDiseaseScreen();
                        }));
                      },
                      child: DiseasesCard(
                        alphabet: "${gridMap[index]['alphabet']}",
                        title: "${gridMap[index]['title']}",
                        height: 124,
                        width: 167,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
