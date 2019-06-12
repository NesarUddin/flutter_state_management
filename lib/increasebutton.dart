import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'classess/counter.dart';

class LeftButton extends StatelessWidget {
  const LeftButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mycounter = Provider.of<MyCounter>(context);
    
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.all(8.0),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: mycounter.increasecountertime,
        child: Text('Icrease Counter'),
      ),
    );
  }
}

