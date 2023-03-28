import 'package:flutter/material.dart';

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
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SeasonScreen()));
          },
          child: const RectangularCard(),
        );
      },
    );
  }
}
