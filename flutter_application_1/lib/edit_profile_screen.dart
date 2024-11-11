import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/profile.jpg'), // Gambar profil
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Alamat Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'No Telepon'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ubah Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
