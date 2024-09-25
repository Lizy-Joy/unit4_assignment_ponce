import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lizy Joy Ponce', style: TextStyle(fontSize: 24, fontFamily: 'Oxygen')),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 51, 169, 153),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Row (Image and Name)
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('lib/assets/Ponce.png'), // Use the internal image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Lizy Joy Ponce',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Information Section
            const Text(
              'Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
            ),
            const SizedBox(height: 8),
            _buildInfoRow(Icons.email, 'Email', 'lizyjoy.ponce@wvsu.edu.ph', ),
            _buildInfoRow(Icons.phone, 'Phone', '+639637658109'),
            _buildInfoRow(Icons.home, 'Address', 'Ungka 1, Pavia, Iloilo'),
            _buildInfoRow(Icons.menu_book, 'Course', 'Bachelor of Science in Information Technology'),
            _buildInfoRow(Icons.school, 'School', 'West Visayas State University'),
            _buildInfoRow(Icons.favorite, 'Hobbies', 'Reading, Sleeping, Watching Anime'),
            const SizedBox(height: 24),
            // Biography Section
            const Text(
              'My Biography',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Hello! My name is Lizy Joy Ponce. I am 3rd year student from West Visayas State University. Taking up Bachelor of Science '
              'in Information Technology. I\'m the eldest daughter coming from a humble family. During my free times I quite like lazing around. '
              ' Reading various books and watching anime is a way for me to relieve my stress, '
              'especially since I\'m in my third year now and feeling quite pressured due to the increasing schoolwork and responsibilities.',
              style: TextStyle(fontSize: 16, fontFamily: 'Oxygen'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.green[400]),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
          ),
          const Spacer(),
          Text(data, style: const TextStyle(fontSize: 16, fontFamily: 'Oxygen')),
        ],
      ),
    );
  }
}
