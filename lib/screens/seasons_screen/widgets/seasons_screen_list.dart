import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../../widgets/rectangular_card.dart';
import '../../season_screen.dart';

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
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SeasonScreen(
                          name: seasons[index]["title"],
                        )));
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
