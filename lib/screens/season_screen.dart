import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_search_bar.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';
import 'package:provider/provider.dart';

import '../constants/strings.dart';
import '../controllers/articles_controller.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';

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
  @override
  void initState() {
    Provider.of<ArticlesController>(context, listen: false)
        .getSeasonCategory(season: widget.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ArticlesController articlesController =
        Provider.of<ArticlesController>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mainheading(headingName: widget.name),
            const CustomSearchBar(),
            Subheading(title: '${widget.name} Searches'),
            GridBuilder(
              itemCount: articlesController.matchedArticles.length,
              itemBuilder: (context, index) {
                return SquareCard(
                  img: "${imgs[index]['img']}",
                  title: articlesController.matchedArticles[index].title,
                  article: articlesController.matchedArticles[index],
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
