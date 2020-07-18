/// Represents descriptive information about a Task

enum TaskStatus{
  init,
  start,
  pause,
  stop,
  complete
}

class TaskDetail {
  final int estimate;
  final int actual;
  final TaskStatus status;

  TaskDetail(this.estimate, this.actual,this.status);
}