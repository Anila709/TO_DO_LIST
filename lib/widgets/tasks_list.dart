import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/task_tile.dart';
import 'package:to_do_list/models/tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(taskTitle: widget.tasks[index].name);
      },
      itemCount: widget.tasks.length,
    );
  }
}
