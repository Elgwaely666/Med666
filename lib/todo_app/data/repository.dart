
import 'package:flutter_application_1/todo_app/data/task_model.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  
  static late final Database db;
  static Future<void> init ()async{
    db = await openDatabase('todo.db', 
    version: 1,
     onCreate: (datab, version) async{
       await datab.execute(
      'CREATE TABLE Tasks (id INTEGER PRIMARY KEY, title TEXT, sub TEXT, date TEXT, checked INTEGER)');
    },
    onOpen: (datab) {
      
    },
    );
  }
  static Future<void> insertTask (TaskModel task)async{
    int checked = task.isChecked ? 1 : 0;
    await db.rawInsert(
      'INSERT INTO Tasks(title, sub, date, checked) VALUES("${task.title}", "${task.subTitle}", "${task.date}" ,$checked)');
  fetshAllTasks();
  }
  static Future<List<TaskModel>> fetshAllTasks ()async{
    List<TaskModel> tasksList = [];
    List<Map<String,dynamic>> jsonList = await db.rawQuery('SELECT * FROM Tasks');
    for (var taskMap in jsonList) {
      var task = TaskModel.fromJson(taskMap);
         tasksList.add(task);
    }
    return tasksList;
  }
  static Future<void> deleteTask (int id)async{
    await db.rawDelete('DELETE FROM Tasks WHERE id = $id');
    fetshAllTasks();
  }
  static Future<void> toggleCheck (TaskModel task)async{
    int newCheck = task.isChecked ? 0 : 1;
    await db.rawUpdate(
    'UPDATE Tasks SET checked = $newCheck WHERE id = ${task.id}');
    fetshAllTasks();
  }
}
