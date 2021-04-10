class Category {
  String title;
  String desc;
  bool selected;

  Category({title, desc, selected});

  Category.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['desc'] = desc;
    data['selected'] = selected;
    return data;
  }
}
