import 'package:flutter/material.dart';
import 'package:medicare_health_app/widgets/grid_builder.dart';
import 'package:medicare_health_app/widgets/square_card.dart';
import 'package:medicare_health_app/widgets/subheading.dart';
import 'package:provider/provider.dart';

import '../constants/strings.dart';
import '../controllers/articles_controller.dart';
import '../widgets/custom_search_bar.dart';

import '../widgets/mainheading.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ArticlesController articlesController =
        Provider.of<ArticlesController>(context);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Mainheading(headingName: 'Search'),
              const CustomSearchBar(
                searchAll: true,
              ),
              const Subheading(title: 'Common Searches'),
              GridBuilder(
                itemCount: articlesController.searchedArticles.length,
                itemBuilder: (context, index) {
                  return SquareCard(
                    img: "${imgs[index]['img']}",
                    title: articlesController.searchedArticles[index].title,
                    article: articlesController.searchedArticles[index],
                    height: 124,
                    width: 167,
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
