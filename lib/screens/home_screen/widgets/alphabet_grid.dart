import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/alphabet_list_screen.dart';

import '../../../constants/strings.dart';
import '../../../widgets/grid_builder.dart';
import '../../../widgets/square_card.dart';

class AlphabetGrid extends StatelessWidget {
  const AlphabetGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const AlphabetListScreen();
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
