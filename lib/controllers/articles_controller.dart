import 'package:flutter/material.dart';

import '../models/article_model.dart';

class ArticlesController with ChangeNotifier {
  List<Article> articles = [];

  void setArticles(newArticles) {
    articles = newArticles;
    notifyListeners();
  }
}
