import './task_detail.dart';

/// Represents a task user have.
class Task {
  final String username;
  final int currentActiveid;
  final List<TaskDetail> taskdetails;

  Task(this.username, this.currentActiveid, this.taskdetails);

  static Task fetchAll() {
    return 
      Task('User', 2, [
        TaskDetail(1, "Initail Task", 30, 0, TaskStatus.pause),  
        TaskDetail(2, "Pause Task",40, 10, TaskStatus.pause),
        TaskDetail(3, "Started Task",40, 50, TaskStatus.start),
        // TaskDetail(3, "Task 3",60, 60, TaskStatus.stop),
        TaskDetail(4, "Completed Task",55, 77, TaskStatus.complete)
      ]);
  } 
}