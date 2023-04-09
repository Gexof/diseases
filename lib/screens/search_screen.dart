import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/about_disease_screen.dart';
import 'package:medicare_health_app/widgets/grid_builder.dart';
import 'package:medicare_health_app/widgets/square_card.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../constants/strings.dart';
import '../widgets/custom_search_bar.dart';

import '../widgets/mainheading.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Mainheading(headingName: 'Search'),
              const CustomSearchBar(),
              Subheading(title: 'Common Searches'),
              GridBuilder(
                gridMap: imgs,
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AboutDiseaseScreen();
                      }));
                    },
                    child: SquareCard(
                      isItImg: true,
                      img: "${imgs[index]['img']}",
                      title: "${imgs[index]['title']}",
                      height: 124,
                      width: 167,
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
