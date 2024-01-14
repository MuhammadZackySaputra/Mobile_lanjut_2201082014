import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String data = "Mau Coklat?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Mau coklat?"),
                content:
                    Text("apakah kamu mau coklat"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "Ini ambil";
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("Mau"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "Padahal coklat enak";
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("Tidak"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.account_tree),
      ),
    );
  }
}