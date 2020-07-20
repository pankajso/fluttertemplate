/// Represents descriptive information about a Task

enum TaskStatus{
  init,
  start,
  pause,
  stop,
  complete
}

class TaskDetail {
  final int id;
  final String name;
  final int estimate;
  final int actual;
  final TaskStatus status;

  TaskDetail(this.id, this.name, this.estimate, this.actual, this.status);
}