import 'package:flutter/material.dart';
import '../models/task.dart';
import '../style.dart';

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
                child: ListTile( //Text(
                  leading: Icon(Icons.ac_unit),
                  title: Text( task.taskdetails[index].name,
                  // overflow: TextOverflow.ellipsis,
                  // maxLines: 2,
                  // style:
                    // Theme.of(context).textTheme.headline6.copyWith(color: textColor),
                ),
                style:
                    Theme.of(context).textTheme.headline6.copyWith(color: textColor),
              ),
            ),
            Text(
              "Estimated: " + task.taskdetails[index].estimate.toString() ,
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
}