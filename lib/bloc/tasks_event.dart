// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TasksEvent {
  final TaskModel task;
  const AddTask({
    required this.task,
  });
}

//
class UpdateTask extends TasksEvent {
  final TaskModel task;
  const UpdateTask({
    required this.task,
  });
}

//
class DeletedTask extends TasksEvent {
  final TaskModel task;
  const DeletedTask({
    required this.task,
  });
}
