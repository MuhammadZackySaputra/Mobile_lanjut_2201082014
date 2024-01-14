import 'package:flutter/material.dart';
import 'package:flutter_application_crud/matakuliah/matakuliah.dart';
import 'package:flutter_application_crud/matakuliah/api.dart';

void main() {
  runApp(matakuliahApp());
}

class matakuliahApp extends StatelessWidget {
  const matakuliahApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiService _apiService = ApiService();
  final TextEditingController _kodeController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _sksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD MATAKULIAH'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _kodeController,
                    decoration: InputDecoration(labelText: 'Kode'),
                  ),
                  TextFormField(
                    controller: _namaController,
                    decoration: InputDecoration(labelText: 'Nama'),
                  ),
                  TextFormField(
                    controller: _sksController,
                    keyboardType:
                        TextInputType.number, // Use TextInputType.number
                    decoration: InputDecoration(labelText: 'Sks'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      // Example: Creating a new post
                      Matakuliah newPost = Matakuliah(
                        id: 0,
                        kode: _kodeController.text,
                        nama: _namaController.text,
                        sks: int.parse(_sksController.text), // Parse as integer
                      );
                      Matakuliah createdPost =
                          await _apiService.createMatakuliah(newPost);

                      // Clear text fields
                      _kodeController.clear();
                      _namaController.clear();
                      _sksController.clear();

                      // Refresh the UI after creating a new post
                      setState(() {});
                    },
                    child: Text('Create Post'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Matakuliah>>(
              future: _apiService.getMatakuliah(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  List<Matakuliah> posts = snapshot.data!;
                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(posts[index].kode),
                        subtitle: Text(posts[index].nama),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
