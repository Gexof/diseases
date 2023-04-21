import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../../widgets/rectangular_card.dart';

class SeasonsCardsList extends StatelessWidget {
  const SeasonsCardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: seasons.length,
      itemBuilder: (context, index) {
        return RectangularCard(
          img: seasons[index]['img'],
          title: seasons[index]['title'],
          season: seasons[index]['title'].toString().toLowerCase(),
        );
      },
    );
  }
}
