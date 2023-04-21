import 'package:flutter/material.dart';

import '../models/article_model.dart';

class ArticlesController with ChangeNotifier {
  List<Article> articles = [];
  List<Article> filteredArticles = [];

  void setArticles(newArticles) {
    articles = newArticles;
    notifyListeners();
  }

  void searchArticles({required String searchString}) {
    List<String> keywords = searchString.split(" ");
    for (var article in articles) {
      bool allMatched = true;
      for (String keyword in keywords) {
        if (!article.allStrings.toLowerCase().contains(keyword.toLowerCase())) {
          allMatched = false;
        }
      }
      if (allMatched) {
        filteredArticles.add(article);
      }
    }
  }

  void getAlphabeticCategory({required String letter}) {
    for (var article in articles) {
      if (article.title[0].toLowerCase() == letter.toLowerCase()) {
        filteredArticles.add(article);
      }
    }
  }

  void getSeasonCategory({required String season}) {
    for (var article in articles) {
      if (article.season.toLowerCase() == season.toLowerCase()) {
        filteredArticles.add(article);
      }
    }
  }
}
