class Article {
  String? title;
  String? season;
  List<String>? sectionsTitles;
  List<String>? sections;
  List<String>? images;

  Article(
      {this.title,
      this.season,
      this.sectionsTitles,
      this.sections,
      this.images});

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    season = json['season'];
    sectionsTitles = json['sectionsTitles'].cast<String>();
    sections = json['sections'].cast<String>();
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['season'] = season;
    data['sectionsTitles'] = sectionsTitles;
    data['sections'] = sections;
    data['images'] = images;
    return data;
  }
}