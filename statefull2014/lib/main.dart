import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var question = [
  'whats is your favorite color? ',
  'Whats is your favorite food?'
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void selecAnswer() {
    setState(() {
      if (questionIndex < question.length - 1) {
        questionIndex = questionIndex + 1;
      } else {
        questionIndex = 0;
      }
    });

    print(questionIndex);
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
              Text(question[questionIndex]),
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
