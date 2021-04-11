class Article {
  String title;
  String shortDesc;
  String longDesc;
  bool isReaded;
  int categoryId;
  String categoryName;
  String author;
  String sourceName;
  String articleDate;

  Article(
      {title,
      shortDesc,
      longDesc,
      isReaded,
      categoryId,
      categoryName,
      author,
      sourceName,
      articleDate});

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    isReaded = json['is_readed'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    author = json['author'];
    sourceName = json['source_name'];
    articleDate = json['article_date'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['short_desc'] = shortDesc;
    data['long_desc'] = longDesc;
    data['is_readed'] = isReaded;
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    data['author'] = author;
    data['source_name'] = sourceName;
    data['article_date'] = articleDate;
    return data;
  }
}
