import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyAppBar());
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("APPBAR"),
          centerTitle: true,
          leading: Container(
            color: Color.fromARGB(255, 6, 224, 184),
            child: Center(
              child: Text("LOADING"),
            ),
          ),
          leadingWidth: 150,
          actions: [
            Containeritems(i: 0),
            Containeritems(i: 0),
          ],
          bottom: PreferredSize(
            preferredSize: Size(
              10000,
              60,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Center(
                child: Text(
                  'BOTTOM',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              height: 50,
              color: Color.fromARGB(96, 223, 90, 8),
            ),
          ),
          flexibleSpace: Container(
            color: Color.fromARGB(255, 63, 154, 8),
          ),
        ),
      ),
    );
  }
}

class Containeritems extends StatelessWidget {
  int i;
  List<Color> listColor = List.generate(
    2,
    (index) => Color.fromRGBO(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextDouble(),
    ),
  );
  Containeritems({required this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('ACTION')),
      width: 60,
      color: listColor[i],
    );
  }
}
