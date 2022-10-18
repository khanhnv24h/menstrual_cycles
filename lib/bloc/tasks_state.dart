part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  List<TaskModel> allTasks;
  TasksState({
    this.allTasks = const <TaskModel>[],
  });

  @override
  List<Object> get props => [
        allTasks,
      ];
}
