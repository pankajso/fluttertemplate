import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/task.dart';
import 'tile_overlay.dart';

class TaskView extends StatelessWidget {
  final tasks = Task.fetchAll();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tasks.username),
      ),
      body: ListView.builder(
        itemCount: tasks.taskdetails.length,
        itemBuilder: (context, index) => 
        _itemBuilder(context, tasks, index),
        ),
    );
  }
  _onTaskTap(BuildContext context, int taskID) {
    
  }
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
}

