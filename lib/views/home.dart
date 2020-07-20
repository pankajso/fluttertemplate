import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';

class Home extends StatelessWidget {
  final List _colorList = [Colors.red, Colors.blue, Colors.green];
  final List _summaryList = ["Summary1", "Summary2", "Summary3"];
  final List _detailsList = ["Details The analyzer produces this diagnostic when a method that overrides a method that is annotated as @mustCallSuper doesn’t invoke the overridden method as required.", 
  "Details 2 This method overrides a method annotated as ‘@mustCallSuper’ in ‘{0}’, but doesn’t invoke the overridden method.", 
  "Details 3 The following code produces this diagnostic because the method m in B doesn’t invoke the overridden method m in A:"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Template'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // children: data(_summaryList,_detailsList,_colorList),
      ),
    );
  }
}

// List<Widget> data(_summaryList,_detailsList,_colorList) {
//     List<Widget> widgetList = List();
//     widgetList.add(ImageBanner('assets/images/1.jpg'));
//     for (int i = 0; i < _colorList.length; i++) {
//       widgetList.add(TextSection(_summaryList[i],_detailsList[i], _colorList[i]));
//     }
//     return widgetList; 
//   }