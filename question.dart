import 'package:flutter/material.dart';

class uestion extends StatelessWidget {
  String questiontext;
  uestion(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center,
        ));
  }
}
