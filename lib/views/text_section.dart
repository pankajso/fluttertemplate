import 'package:flutter/material.dart';
import 'package:fluttertemplate/models/task_detail.dart';

class TextSection extends StatelessWidget {
  // final Color _color;
  // final String _title;
  // final String _body;
  final int _estimate;
  final int _actual;
  final TaskStatus _status;

  static const double _hPad = 16.0;

  TextSection(this._estimate, this._actual, this._status);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(_estimate.toString(), style: Theme.of(context).textTheme.headline6),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
            child: Text(_actual.toString(), style: Theme.of(context).textTheme.bodyText2),
          ),
        ]);
  }
}