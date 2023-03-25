import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medicare_health_app/widgets/custom_app_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';

import '../widgets/diseases_card.dart';

class AlphabetScreen extends StatelessWidget {
  AlphabetScreen({super.key});

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
    {
      'alphabet': 'G ',
      'title': 'G-Diseases',
    },
    {
      'alphabet': 'H',
      'title': 'H-Diseases',
    },
    {
      'alphabet': 'I',
      'title': 'I-Diseases',
    },
    {
      'alphabet': 'J',
      'title': 'J-Diseases',
    },
    {
      'alphabet': 'K',
      'title': 'K-Diseases',
    },
    {
      'alphabet': 'L',
      'title': 'L-Diseases',
    },
    {
      'alphabet': 'M',
      'title': 'M-Diseases',
    },
    {
      'alphabet': 'N',
      'title': 'N-Diseases',
    },
    {
      'alphabet': 'O',
      'title': 'O-Diseases',
    },
    {
      'alphabet': 'P',
      'title': 'P-Diseases',
    },
    {
      'alphabet': 'Q',
      'title': 'Q-Diseases',
    },
    {
      'alphabet': 'R',
      'title': 'R-Diseases',
    },
    {
      'alphabet': 'S',
      'title': 'S-Diseases',
    },
    {
      'alphabet': 'T',
      'title': 'T-Diseases',
    },
    {
      'alphabet': 'U',
      'title': 'U-Diseases',
    },
    {
      'alphabet': 'V',
      'title': 'V-Diseases',
    },
    {
      'alphabet': 'W',
      'title': 'F-Diseases',
    },
    {
      'alphabet': 'W',
      'title': 'F-Diseases',
    },
    {
      'alphabet': 'X',
      'title': 'X-Diseases',
    },
    {
      'alphabet': 'Y',
      'title': 'Y-Diseases',
    },
    {
      'alphabet': 'Z',
      'title': 'Z-Diseases',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Alphabet'),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mainheading(headingName: 'Alphabet'),
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
      )),
    );
  }
}
