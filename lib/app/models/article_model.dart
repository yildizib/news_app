class Article {
  String title;
  String shortDesc;
  String longDesc;
  bool isReaded;
  int categoryId;
  String categoryName;

  Article({title, shortDesc, longDesc, isReaded, categoryId, categoryName});

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    isReaded = json['is_readed'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['short_desc'] = shortDesc;
    data['long_desc'] = longDesc;
    data['is_readed'] = isReaded;
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    return data;
  }
}
