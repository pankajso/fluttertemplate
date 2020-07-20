import './task_detail.dart';

/// Represents a task user have.
class Task {
  final String username;
  final int currentActiveid;
  final List<TaskDetail> taskdetails;

  Task(this.username, this.currentActiveid, this.taskdetails);

  static Task fetchAll() {
    return 
      Task('User1', 2, [
        TaskDetail(1, "Task 1", 30, 0, TaskStatus.init),  TaskDetail(2, "Task 2",40, 10, TaskStatus.pause)
      ]);
  }
}