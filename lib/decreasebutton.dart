import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'classess/counter.dart';

class RightButton extends StatelessWidget {
  const RightButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mycounter = Provider.of<MyCounter>(context);
    
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.all(8.0),
        textColor: Colors.white,
        color: Colors.red,
        onPressed: mycounter.decreasecountertime,
        child: Text('Decrease Counter'),
      ),
    );
  }
}

