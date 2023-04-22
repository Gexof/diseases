import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/article_model.dart';

class ArticlesController with ChangeNotifier {
  List<Article> articles = [];
  List<Article> filteredArticles = [];
  final List<Article> _matchedArticles = [];

  get matchedArticles {
    return _matchedArticles.isEmpty ? filteredArticles : _matchedArticles;
  }

  get searchedArticles {
    return _matchedArticles.isEmpty ? articles : _matchedArticles;
  }

  void setArticles(newArticles) {
    articles = newArticles;
    notifyListeners();
  }

  void searchArticles({bool searchAll = false, required String searchString}) {
    _matchedArticles.clear();
    List<String> keywords = searchString.split(" ");
    log(searchAll.toString());
    for (var article in (searchAll ? articles : filteredArticles)) {
      log(article.toString());
      bool allMatched = true;
      for (String keyword in keywords) {
        if (!article.allStrings.toLowerCase().contains(keyword.toLowerCase())) {
          allMatched = false;
        }
      }
      if (allMatched) {
        _matchedArticles.add(article);
      }
    }
    notifyListeners();
  }

  void getAlphabeticCategory({required String letter}) {
    filteredArticles.clear();
    for (var article in articles) {
      if (article.title[0].toLowerCase() == letter.toLowerCase()) {
        filteredArticles.add(article);
      }
    }
  }

  void getSeasonCategory({required String season}) {
    filteredArticles.clear();
    for (var article in articles) {
      if (article.season.toLowerCase() == season.toLowerCase()) {
        filteredArticles.add(article);
      }
    }
  }
}
