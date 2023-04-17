import 'article_model.dart';

class Articles {
  List<Article>? article;

  Articles({this.article});

  Articles.fromJson(Map<String, dynamic> json) {
    if (json['article'] != null) {
      article = <Article>[];
      json['article'].forEach((v) {
        article!.add(Article.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (article != null) {
      data['article'] = article!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
