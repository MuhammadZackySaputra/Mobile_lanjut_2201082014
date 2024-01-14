import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  String myText;
  Mycontainer(this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.white,
      child: Text(myText),
      );
  }
}