import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nobp;
  final String nama;
  final String nilaiMatematika;
  final String nilaiAlgoritma;
  final String nilaiJava;

  ResultPage({
    required this.nobp,
    required this.nama,
    required this.nilaiMatematika,
    required this.nilaiAlgoritma,
    required this.nilaiJava,
  });

  @override
  Widget build(BuildContext context) {
    double matematikaValue = double.tryParse(nilaiMatematika) ?? 0.0;
    double algoritmaValue = double.tryParse(nilaiAlgoritma) ?? 0.0;
    double javaValue = double.tryParse(nilaiJava) ?? 0.0;

    double rataRata = (matematikaValue + algoritmaValue + javaValue) / 3;
    double nilai = 80;
    if (nilai > 80) {
      buildResultRow("A", nilai.toStringAsFixed(2));
    } else if (nilai > 65) {
      buildResultRow("B", nilai.toStringAsFixed(2));
    } else if (nilai > 55) {
      buildResultRow("C", nilai.toStringAsFixed(2));
    }

    double nilaiTertinggi = [matematikaValue, algoritmaValue, javaValue]
        .reduce((a, b) => a > b ? a : b);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResultRow("NOBP:", nobp),
            buildResultRow("Nama:", nama),
            buildResultRow("Nilai Matematika:", nilaiMatematika),
            buildResultRow("Nilai Algoritma:", nilaiAlgoritma),
            buildResultRow("Nilai Java:", nilaiJava),
            buildResultRow("Angka", nilai.toStringAsFixed(2)),
            buildResultRow("Nilai Rata-rata:", rataRata.toStringAsFixed(2)),
            buildResultRow(
                "Nilai Tertinggi:", nilaiTertinggi.toStringAsFixed(2)),
          ],
        ),
      ),
    );
  }

  Widget buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
