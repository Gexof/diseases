import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../models/article_model.dart';
import '../screens/about_disease_screen.dart';
import '../screens/letter_articles_screen.dart';

class SquareCard extends StatelessWidget {
  final String? alphabet;
  final String? title;
  final double height;
  final double width;
  final Article? article;

  const SquareCard({
    super.key,
    this.alphabet,
    this.title,
    this.article,
    this.height = 138,
    this.width = 184.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        alphabet != null
            ? _navigateToLetterScreen(context)
            : _navigateToArticleScreen(context, article);
      },
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            child: Column(
              children: [
                Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.grey,
                    ),
                    child: article == null
                        ? Center(
                            child: Text(
                              alphabet!,
                              style: const TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.network(
                              // REFACTOR
                              imgs[0]['img'],
                              fit: BoxFit.cover,
                            ),
                          )),
                const SizedBox(height: 8),
                Text(
                  title ?? article?.title ?? "NULL",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToArticleScreen(context, article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return AboutDiseaseScreen(
            article: article,
          );
        },
      ),
    );
  }

  void _navigateToLetterScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LetterArticlesScreen(
            letter: alphabet!,
          );
        },
      ),
    );
  }
}
