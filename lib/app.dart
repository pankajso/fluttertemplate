import 'package:flutter/material.dart';
import 'views/task_view.dart';
import 'style.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskView(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme: TextTheme(
            headline6: TitleTextStyle,
            bodyText2: Body1TextStyle,
          )),
    );
  }
}
