import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 choosen');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s your first questio,',
          'what\'s your second question'
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test Title'),
          ),
          body: Column(
            children: <Widget>[
              Text(question.elementAt(0)),
              RaisedButton(
                  child: Text('Question 1 : What\'s your name buddy'),
                  onPressed: answerQuestion),
              RaisedButton(
                child: Text('Question 2 : Whats\; your age '),
                onPressed: () => print('Answer 2 chossen'),
              ),
              RaisedButton(
                child: Text('Question 3 : There is no question '),
                onPressed: () {
                  print('Answer 3 chossen');
                },
              )
            ],
          )),
    );
  }
}
