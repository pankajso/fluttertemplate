import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertemplate/models/task_detail.dart';

import '../models/task.dart';
import 'tile_overlay.dart';

class TaskView extends StatelessWidget {
  final tasks = Task.fetchAll();

  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        
        title: Text(tasks.username),
      ),
      floatingActionButton: buildFloatingActionButton(context),
      body: ListView.builder(
        itemCount: tasks.taskdetails.length,
        itemBuilder: (context, index) => _itemBuilder(context, tasks, index),
      ),
    );
    return scaffold;
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                title: Text("Add Task"),
                content: TextField(
                  onChanged: (String value) {
                    tasks.taskdetails.add(TaskDetail(1, value, 50,0,TaskStatus.pause));
                  },
                ),
                actions: <Widget>[
                  FlatButton(
                      onPressed: () {
                        // setState(() {
                        //   todos.add(input);
                        // });
                        // createTodos();
                        Navigator.of(context).pop();
                      },
                      child: Text("Add"))
                ],
              );
            });
      },
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }

  _onTaskTap(BuildContext context, int taskID) {}
  Widget _itemBuilder(BuildContext context, Task task, int index) {
    return GestureDetector(
      onTap: () => _onTaskTap(context, task.currentActiveid),
      child: Container(
        height: 115.0,
        child: Stack(
          children: [
            TileOverlay(tasks, index),
          ],
        ),
      ),
    );
  }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  
}
