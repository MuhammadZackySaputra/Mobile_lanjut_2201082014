import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 750,
            color: Colors.green,
            child: Image(image: AssetImage("images/win.png"),
            ),
          ),
        ),
      ),
    );
  }
}
