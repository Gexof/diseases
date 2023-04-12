import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_app_bar.dart';

import '../constants/strings.dart';
import '../widgets/square_card.dart';

class AlphabetScreen extends StatelessWidget {
  const AlphabetScreen({super.key});

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
              itemCount: allAlphabet.length,
              itemBuilder: (context, index) {
                return SquareCard(
                  alphabet: "${allAlphabet[index]['alphabet']}",
                  title: "${allAlphabet[index]['title']}",
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
