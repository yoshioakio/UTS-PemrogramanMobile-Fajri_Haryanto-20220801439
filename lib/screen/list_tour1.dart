import 'package:flutter/material.dart';

class ListTour1Page extends StatelessWidget {
  const ListTour1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Indonesia"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'images/borobudur.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Candi Borobudur",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Magelang, Indonesia",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    "4.9",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Candi Borobudur adalah salah satu warisan dunia yang terletak di Magelang, Jawa Tengah. Candi ini merupakan monumen Buddha terbesar di dunia.",
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              const SizedBox(height: 16),
              Text(
                "Interests",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 10,
                children: [
                  Chip(
                    label: Text(
                      "Sejarah Tradisional",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Arsitektur Indah",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Icon Indonesia",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Kelestarian Sejarah",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Tombol Navigasi
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: Text("Kembali ke Halaman Sebelumnya"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
