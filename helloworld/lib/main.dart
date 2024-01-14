import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HalHello(),
    ),
  );
}

class HalHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          width: 400.0,
          height: 150.0,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Muhammad Zacky Saputra",
                  style: TextStyle(fontFamily: "Times New Romans", fontSize: 20.0, color: Colors.green),
                ),
                Text(
                  "2201082014",
                  style: TextStyle(fontFamily: "Calibri", fontSize: 20.0, color: Colors.orange),
                ),
                Text(
                  "D3-Teknik Komputer",
                  style: TextStyle(fontFamily: "Arial", fontSize: 20.0, color: Colors.purple),
                ),
                Text(
                  "Teknologi Informasi",
                  style: TextStyle(fontFamily: "Agency", fontSize: 20.0, color: Colors.red),
                ),
                Text(
                  "Alai Timur",
                  style: TextStyle(fontFamily: "Candara", fontSize: 20.0, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}