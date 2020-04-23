import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {

  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(questionText, style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center),
    );

  }

}