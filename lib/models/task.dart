import './task_detail.dart';

/// Represents a task user have.
class Task {
  final String name;
  final int id;
  final List<TaskDetail> taskdetails;

  Task(this.name, this.id, this.taskdetails);

  static List<Task> fetchAll() {
    return [
      Task('Task1', 1, [
        TaskDetail(30, 0, TaskStatus.init),  TaskDetail(40, 10, TaskStatus.pause)
      ]),
      Task('Task2', 2, [
        TaskDetail(30, 0, TaskStatus.init)
      ]),
    ];
  }
}