import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Answer.dart';
import 'package:flutterapp/Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// this is private clasee because we use '_' (userscore) sign before the MyAppState class
class _MyAppState extends State<MyApp> {
  var questionVariable = 0;

  void _answerQuestion() {
    setState(() {
      questionVariable = questionVariable + 1;
    });
    print(questionVariable);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s your favorite color ?',
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
              Question(question.elementAt(0)),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ],
          )),
    );
  }
}
