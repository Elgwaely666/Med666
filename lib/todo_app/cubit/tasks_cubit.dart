import 'package:flutter_application_1/todo_app/cubit/tasks_states.dart';
import 'package:flutter_application_1/todo_app/data/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/todo_app/data/task_model.dart';


class TasksCubit extends Cubit<TaskState> {
  TasksCubit(super.initialState);
  List<TaskModel> tasks = [];

  initCubit ()async{
    await Repository.init();
    getAllTasks();
  }
  getAllTasks()async{
   tasks.clear();
   tasks = await Repository.fetshAllTasks();
   emit(TaskLodedState());
  }
  addTask(TaskModel task)async{
   await Repository.insertTask(task);
   emit(InsertTaskState());
   getAllTasks();
  }
  toggeleTask(TaskModel task)async{
    await Repository.toggleCheck(task);
    emit(UpdateTaskState());
    getAllTasks();
  }
  deleteTask(TaskModel task)async{
    await Repository.deleteTask(task.id!);
    tasks.remove(task);
    emit(DeleteTaskState());
    getAllTasks();
  }
}