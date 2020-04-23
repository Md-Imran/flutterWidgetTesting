import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function slectHandler;

  Answer(this.slectHandler);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child:  RaisedButton(
          child: Text('Answer 1 : '),
          color: Colors.blueAccent ,
          onPressed: slectHandler),
    );

  }

}