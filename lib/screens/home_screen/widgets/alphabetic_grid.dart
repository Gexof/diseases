import 'package:flutter/material.dart';
import 'package:medicare_health_app/constants/strings.dart';

import '../../../widgets/grid_builder.dart';
import '../../../widgets/square_card.dart';

class AlphabeticGrid extends StatelessWidget {
  const AlphabeticGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridBuilder(
      gridMap: [
        {"letters": alphabeticLetters}
      ],
      itemCount: 6,
      itemBuilder: (context, index) {
        return SquareCard(
          alphabet: alphabeticLetters[index],
          title: "${alphabeticLetters[index]}-Diseases",
          height: 124,
          width: 167,
        );
      },
    );
  }
}
