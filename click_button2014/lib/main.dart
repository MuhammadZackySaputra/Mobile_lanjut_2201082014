import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void selecAnswer() {
    print('Answer select');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            title: Text('My Third App'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              Text('First Question'),
              ElevatedButton(
                  onPressed: () => print('Answer 1 selected'),
                  child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: () {
                    print('Answer 2 selected');
                  },
                  child: Text('Answer 2')),
              ElevatedButton(onPressed: selecAnswer, child: Text('Answer 3')),
              ElevatedButton(onPressed: selecAnswer, child: Text('Answer 4')),
            ],
          )),
    );
  }
}
