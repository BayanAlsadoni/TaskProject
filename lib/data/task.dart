class Task {
  int? id;
  String? title;
  String? description;
  String? time;
  String? date;
  int? catId;
  Task({this.id, this.title, this.description});
  Task.fromMap(Map map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    time = map['time'];
    date = map['date'];
    catId = map['catId'];
  }
  toMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'time': time,
      'catId': catId
    };
  }
}
