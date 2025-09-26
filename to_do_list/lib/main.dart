// Import library Flutter untuk UI components
import 'package:flutter/material.dart';

// Function utama yang dijalankan pertama kali
void main() {
  // Jalankan aplikasi Flutter, dimulai dari widget MyApp
  runApp(const MyApp());
}

// Deklarasi class MyApp yang extends (turunan dari) StatelessWidget
class MyApp extends StatefulWidget {
  // Constructor dengan key parameter untuk best practices
  const MyApp({super.key});

  // Override function build yang WAJIB ada di setiap widget
  @override
  Widget build(BuildContext context) {
    // Return MaterialApp sebagai root aplikasi
    return MaterialApp(
      // Nama aplikasi (muncul di task switcher)
      title: 'Todo App Pemula',
      // Tema warna aplikasi
      theme: ThemeData(
        // Warna utama aplikasi = biru
        primarySwatch: Colors.blue,
      ),
      // Halaman pertama yang ditampilkan saat app dibuka
      home: const TodoListScreen(),
    );
  }
}

// Deklarasi class TodoListScreen untuk halaman utama
class TodoListScreen extends StatefulWidget {
  // Constructor dengan key parameter untuk best practices
  const TodoListScreen({super.key});

  // Override function build untuk membangun UI halaman
  @override
  Widget build(BuildContext context) {
    // Return Scaffold sebagai kerangka halaman
    return Scaffold(
      // AppBar = bar di atas layar
      appBar: AppBar(
        // Text yang muncul di AppBar
        title: const Text('My To-Do List'),
        // Warna background AppBar
        backgroundColor: Colors.blue,
      ),
      // Body = konten utama halaman
      // Body halaman dengan padding di semua sisi
      body: Padding(
        // Jarak 16 pixel dari semua tepi layar
        padding: const EdgeInsets.all(16.0),
        // Column = susun widget anak secara vertikal
        child: Column(
          // Daftar widget yang disusun vertikal
          children: [
            // Container = kotak untuk styling dan layout
            Container(
              // Padding di dalam container
              padding: const EdgeInsets.all(16.0),
              // Dekorasi container (warna, bentuk, dll)
              decoration: BoxDecoration(
                // Warna background abu-abu terang
                color: Colors.grey[100],
                // Sudut melengkung dengan radius 12 pixel
                borderRadius: BorderRadius.circular(12.0),
              ),
              // Isi container
              child: Column(
                // Daftar widget di dalam container
                children: [
                  // TextField = input field yang bisa diketik user
                  TextField(
                    // Styling dan decorasi input field
                    decoration: InputDecoration(
                      // Text yang muncul saat input kosong
                      hintText: 'Ketik task baru di sini...',
                      // Border outline di sekitar input
                      border: OutlineInputBorder(
                        // Sudut border melengkung
                        borderRadius: BorderRadius.circular(8.0),
                      ),

                      // Icon di sebelah kiri input
                      prefixIcon: const Icon(Icons.edit),
                    ),
                  ),
                  // Jarak kosong vertikal 12 pixel
                  const SizedBox(height: 12),
                  // SizedBox untuk mengatur lebar button
                  SizedBox(
                    // Button ambil lebar penuh container
                    width: double.infinity,
                    // Button dengan efek elevasi
                    child: ElevatedButton(
                      // Function yang dijalankan saat button ditekan
                      onPressed: () {
                        // Print ke debug console untuk test
                        debugPrint('Button ditekan!');
                      },
                      // Styling button
                      style: ElevatedButton.styleFrom(
                        // Warna background button
                        backgroundColor: Colors.blue,
                        // Warna text/icon button
                        foregroundColor: Colors.white,
                        // Padding atas-bawah 15 pixel
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        // Bentuk button dengan sudut bulat
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      // Isi button
                      // Isi button: Row untuk susun icon dan text horizontal
                      child: Row(
                        // Posisi elemen di tengah Row
                        mainAxisAlignment: MainAxisAlignment.center,
                        // Daftar widget dalam Row
                        children: [
                          // Icon plus
                          Icon(Icons.add),
                          // Jarak horizontal 8 pixel antara icon dan text
                          SizedBox(width: 8),
                          // Text button
                          Text(
                            'Add Task',
                            // Styling text
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



