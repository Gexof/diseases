import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../../widgets/square_card.dart';
import '../../about_disease_screen.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20, right: 20),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        scrollDirection: Axis.horizontal,
        itemCount: imgs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutDiseaseScreen();
              }));
            },
            child: SquareCard(
                isItImg: true,
                img: "${imgs[index]['img']}",
                title: "${imgs[index]['title']}"),
          );
        },
      ),
    );
  }
}
