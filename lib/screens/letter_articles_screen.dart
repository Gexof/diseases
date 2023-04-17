import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_app_bar.dart';

import '../constants/strings.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';
import 'about_disease_screen.dart';

class LetterArticlesScreen extends StatelessWidget {
  const LetterArticlesScreen({
    required this.letter,
    super.key,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '$letter-Diseases'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridBuilder(
              gridMap: imgs,
              itemCount: imgs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AboutDiseaseScreen();
                    }));
                  },
                  child: SquareCard(
                    img: "${imgs[index]['img']}",
                    title: "${imgs[index]['title']}",
                    height: 124,
                    width: 167,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
