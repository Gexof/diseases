import 'package:flutter/material.dart';
import 'package:medicare_health_app/controllers/articles_controller.dart';

import 'package:medicare_health_app/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

import '../constants/strings.dart';
import '../models/article_model.dart';
import '../widgets/grid_builder.dart';
import '../widgets/square_card.dart';
import 'about_disease_screen.dart';

class LetterArticlesScreen extends StatefulWidget {
  const LetterArticlesScreen({
    required this.letter,
    super.key,
  });

  final String letter;

  @override
  State<LetterArticlesScreen> createState() => _LetterArticlesScreenState();
}

class _LetterArticlesScreenState extends State<LetterArticlesScreen> {
  List<Article> filteredArticles = [];

  @override
  void initState() {
    filteredArticles = Provider.of<ArticlesController>(context, listen: false)
        .getAlphabeticCategory(letter: widget.letter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '${widget.letter}-Diseases'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
