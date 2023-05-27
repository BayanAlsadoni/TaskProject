class Category {
  int? id;
  String? name;
  String? color;
  Category({this.id, this.name, this.color});
  Category.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    color = map['color'];
  }
  toMap() {
    return {'name': name, 'color': color};
  }
}
