import 'package:flutter/material.dart';
import 'package:flutter_state_management/classess/counter.dart';
import 'package:flutter_state_management/decreasebutton.dart';
import 'package:flutter_state_management/increasebutton.dart';
import 'package:flutter_state_management/mytext.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        builder: (context) => MyCounter()),
      ],
      child:  new Scaffold(
          backgroundColor: Colors.white,
          body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyText(),
          SizedBox(
            height: 50,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[LeftButton(), RightButton()],
          )
        ],
      ),
    );
  }
}
