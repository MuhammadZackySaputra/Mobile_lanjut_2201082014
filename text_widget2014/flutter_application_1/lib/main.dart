import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Text("muhammad zacky saputra"
          ),
        ),
      ),
    );
  }
}
