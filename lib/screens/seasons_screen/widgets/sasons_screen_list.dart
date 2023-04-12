import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../../widgets/rectangular_card.dart';
import '../../season_screen.dart';

class SasonsScreenList extends StatelessWidget {
  const SasonsScreenList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: seasons.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SeasonScreen()));
          },
          child: RectangularCard(
            img: '${seasons[index]['img']}',
            title: '${seasons[index]['title']}',
          ),
        );
      },
    );
  }
}
