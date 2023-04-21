import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';
import 'package:provider/provider.dart';

import '../constants/strings.dart';
import '../controllers/articles_controller.dart';
import '../models/article_model.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';
import 'about_disease_screen.dart';

class SeasonScreen extends StatefulWidget {
  const SeasonScreen({
    required this.name,
    super.key,
  });

  final String name;

  @override
  State<SeasonScreen> createState() => _SeasonScreenState();
}

class _SeasonScreenState extends State<SeasonScreen> {
  List<Article> filteredArticles = [];

  @override
  void initState() {
    filteredArticles = Provider.of<ArticlesController>(context, listen: false)
        .getSeasonCategory(season: widget.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mainheading(headingName: widget.name),
            const CustomSearchBar(),
            Subheading(title: '${widget.name} Searches'),
            GridBuilder(
              gridMap: imgs,
              itemCount: filteredArticles.length,
              itemBuilder: (context, index) {
                return SquareCard(
                  img: "${imgs[index]['img']}",
                  title: filteredArticles[index].title,
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
