import 'package:flutter/material.dart';
import '../models/task.dart';
import '../style.dart';
import '../models/task_detail.dart';

const TaskTileHeight = 100.0;

class TaskTile extends StatelessWidget {
  final Task task;
  final int index;

  TaskTile({this.task, this.index});

  @override
  Widget build(BuildContext context) {
    final textColor = TextColorLight;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: TaskTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                //Text(
                leading: toStatus(task.taskdetails[index].status),
                title: Text(
                  task.taskdetails[index].name,
                ),
              ),
              color: toColor(task.taskdetails[index].status),
            ),
            Text(
              "Estimated: " + task.taskdetails[index].estimate.toString(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Actual: " + task.taskdetails[index].actual.toString(),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: textColor),
            ),
          ]),
    );
  }

  Widget toStatus(status) {
    switch (status) {
      // case TaskStatus.init:
      //   return Icon(
      //     Icons.notifications_off,
      //     color: Colors.yellowAccent,
      //   );
      case TaskStatus.complete:
        return Icon(
          Icons.check_circle_outline,
          color: Colors.green,
        );
      case TaskStatus.pause:
        return Icon(
          Icons.pause_circle_outline,
          color: Colors.red,
        );
      case TaskStatus.start:
        return Icon(
          Icons.play_circle_outline,
          color: Colors.green,
        );
      // case TaskStatus.stop:
      //   return Icon(
      //     Icons.stop,
      //     color: Colors.red,
      //   );
      default:
        return Icon(
          Icons.error_outline,
          color: Colors.red,
        );
    }
  }

  Color toColor(status) {
    switch (status) {
      // case TaskStatus.init:
      //   return 
      //     Colors.deepOrange[300];
      //     break;
        
      case TaskStatus.complete:
        return 
          Colors.grey[500];
          break;
      case TaskStatus.pause:
        return 
          Colors.deepOrange[300];
          break;
      case TaskStatus.start:
        return 
          Colors.yellowAccent[300];
          break;
      // case TaskStatus.stop:
      //   return 
      //     Colors.red[100];
      //     break;
      default:
        return 
          Colors.red[900];
          break;
    }
  }
}
