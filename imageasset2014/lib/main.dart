import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 228, 255),
        appBar: AppBar(
          title: Text('ManusiaHiu'),
          backgroundColor: Color.fromARGB(255, 156, 95, 255),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/gogonTunjang.jpeg'),
          ),
        ),
      ),
    );
  }
}