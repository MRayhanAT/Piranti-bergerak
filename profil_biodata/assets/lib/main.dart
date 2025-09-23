


import 'package:flutter/material.dart';

void main() {
  runApp(MyBiodataApp());
}

class MyBiodataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  final Map<String, String> biodata = {
    'Nama': 'Muhamad Rayhan Akhsani Taqwim',
    'NIM': '23091060050',
    'Jurusan': 'Informatika',
    'Instansi': 'Universitas mulawarman',
    'Tanggal Lahir': '12 April 2005',
    'Alamat': 'Yogyakarta, Indonesia',
    'Hobi': 'Membaca, Coding, Gaming',
    'Deskripsi' : 'Saya adalah mahasiswa Informatika Universitas Mulawarman yang bersemangat dalam dunia teknologi.'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
      ),
      body: Padding(\
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/2309106050_head.jpg'),
            ),
            SizedBox(height: 20),
            ...biodata.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      '${entry.key}: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
