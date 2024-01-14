import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Platform.isIOS
                    ? CupertinoAlertDialog(
                        title: Text("DELETE"),
                        content: Text("Are you sure to delete this?"),
                        actions: [
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"),
                          ),
                          CupertinoDialogAction(
                            onPressed: () {
                              // Add your logic for delete here
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      )
                    : AlertDialog(
                        title: Text("DELETE"),
                        content: Text("Are you sure to delete this?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () {
                              // Add your logic for delete here
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
              },
            );
            if (Platform.isAndroid) {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2003),
                lastDate: DateTime(2050),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light(), // Adjust as needed
                    child: child!,
                  );
                },
              );
            } else {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoDatePicker(
                    onDateTimeChanged: (datetime) {
                      print(datetime);
                    },
                    initialDateTime: DateTime.now(),
                  );
                },
              );
            }
          },
          child: Text("Tanggal"),
        ),
      ),
    );
  }
}