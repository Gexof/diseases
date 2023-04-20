import 'package:flutter/material.dart';

import '../models/article_model.dart';

class ArticlesController with ChangeNotifier {
  List<Article> articles = [];

  void setArticles(newArticles) {
    articles = newArticles;
    notifyListeners();
  }

  List<Article> searchArticles({required String searchString}) {
    List<Article> filteredArticles = [];
    List<String> keywords = searchString.split(" ");
    for (var article in articles) {
      bool allMatched = true;
      for (String keyword in keywords) {
        if (!article.allStrings.contains(keyword)) {
          allMatched = false;
        }
      }
      if (allMatched) {
        filteredArticles.add(article);
      }
    }
    return filteredArticles;
  }

  List<Article> getAlphabeticCategory({required String letter}) {
    List<Article> filteredArticles = [];
    for (var article in articles) {
      if (article.title[0] == letter) {
        filteredArticles.add(article);
      }
    }
    return filteredArticles;
  }

  List<Article> getSeasonCategory({required String season}) {
    List<Article> filteredArticles = [];
    for (var article in articles) {
      if (article.season == season) {
        filteredArticles.add(article);
      }
    }
    return filteredArticles;
  }
}
