import 'package:flutter/material.dart';
import 'package:flutter_state_management/classess/counter.dart';
import 'package:provider/provider.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyCounter>(
      builder: (context, counter, _) => Container(
            child: Text('${counter.countertime}',
                style: new TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto',
                    color: Colors.black)),
          ),
    );
  }
}
