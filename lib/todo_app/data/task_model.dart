class TaskModel {
  final String title;
  final String subTitle;
  final String date;
   bool isChecked;
     int? id;

  TaskModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.isChecked
      ,this.id});
        factory TaskModel.fromJson(Map<String, dynamic> json){
    return TaskModel(
        id: json['id'],
        title: json['title'],
        subTitle: json['sub'],
        date: json['date'],
        isChecked: json['checked'] == 1 ? true : false);
  }
}