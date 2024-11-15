import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'list_tour1.dart'; // Import halaman berikutnya

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Indonesia"),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut(); // Logout Firebase
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'images/bali.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Lovina Beach",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Bali, Indonesia",
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
                    "4.8",
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
                "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              const SizedBox(height: 16),
              Text(
                "Interest",
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
                      "Taman Danu Beratan",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Pura Agung Beratan",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Musium Sejarah",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Danau Beratan",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue[50],
                  ),
                  Chip(
                    label: Text(
                      "Gunung Adeng",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTour1Page()),
                    );
                  },
                  child: Text("Ke Halaman Selanjutnya"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
