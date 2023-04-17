import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/letter_articles_screen.dart';

import '../../../constants/strings.dart';
import '../../../widgets/grid_builder.dart';
import '../../../widgets/square_card.dart';

class AlphabeticGrid extends StatelessWidget {
  const AlphabeticGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const LetterArticlesScreen(
            letter: 'A',
          );
        }));
      },
      child: GridBuilder(
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
    );
  }
}
