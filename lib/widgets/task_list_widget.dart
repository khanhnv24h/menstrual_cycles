import 'package:flutter/material.dart';

import '../models/task_model.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<TaskModel> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var task = taskList[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (value) {},
            ),
          );
        },
      ),
    );
  }
}
