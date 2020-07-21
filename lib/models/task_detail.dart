/// Represents descriptive information about a Task

enum TaskStatus{
  // init,
  start,
  pause,
  // stop,
  complete
}

class TaskDetail {
  final int id;
  String name;
  int estimate;
  int actual;
  TaskStatus status;

  TaskDetail(this.id, this.name, this.estimate, this.actual, this.status);
}