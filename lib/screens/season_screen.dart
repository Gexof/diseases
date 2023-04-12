import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../constants/strings.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';

class SeasonScreen extends StatelessWidget {
  const SeasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Mainheading(headingName: 'Summer'),
            const CustomSearchBar(),
            Subheading(title: 'Summer Searches'),
            GridBuilder(
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
            )
          ],
        ),
      ),
    );
  }
}
