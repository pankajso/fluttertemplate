import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertemplate/models/task_detail.dart';
import 'package:numberpicker/numberpicker.dart';
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
        int _weight =1;
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Add Task'),
                        ),
                        TextField(
                            
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Estimated'),
                        ),
                        new ListTile(
                            leading: Icon(Icons.access_time),
                            title: new Text(
                              "$_weight kg",
                            ),
                            onTap: () => _weight = _showEstimatedTimePicker(context, _weight),
                          ),
                        TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Actual'),
                        ),
                        SizedBox(
                          width: 320.0,
                          child: RaisedButton(
                            onPressed: () {Navigator.of(context).pop();},
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: const Color(0xFF1BC0C5),
                          ),
                        ),
                        SizedBox(
                          width: 320.0,
                          child: RaisedButton(
                            onPressed: () {Navigator.of(context).pop();},
                            child: Text(
                              "Cancle",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: const Color(0xFF1BC0C5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
              );
              //   title: Text("Add Task"),
              //   content: TextField(
              //     onChanged: (String value) {
              //       tasks.taskdetails.add(TaskDetail(1, value, 50,0,TaskStatus.pause));
              //     },
              //   ),
              //   actions: <Widget>[
              //     FlatButton(
              //         onPressed: () {
              //           // setState(() {
              //           //   todos.add(input);
              //           // });
              //           // createTodos();
              //           Navigator.of(context).pop();
              //         },
              //         child: Text("Add"))
              //   ],
              // );
            });
      },
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }

_showEstimatedTimePicker(BuildContext context, _weight) {
  showDialog(
    context: context,
    child: new NumberPickerDialog.integer(
      minValue: 1,
      maxValue: 150,
      initialIntegerValue: _weight,
      // initialValue: _weight,
      title: new Text("Enter your estimated time for the task"),
    ),
  ).then((value) {
    if (value != null) {
      return value;
    }
  });
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
