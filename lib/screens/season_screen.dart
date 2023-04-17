import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../constants/strings.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';
import 'about_disease_screen.dart';

class SeasonScreen extends StatelessWidget {
  const SeasonScreen({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mainheading(headingName: name),
            const CustomSearchBar(),
            Subheading(title: '$name Searches'),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AboutDiseaseScreen();
                }));
              },
              child: GridBuilder(
                gridMap: imgs,
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return SquareCard(
                    isItImg: true,
                    img: "${imgs[index]['img']}",
                    title: "${imgs[index]['title']}",
                    height: 124,
                    width: 167,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
