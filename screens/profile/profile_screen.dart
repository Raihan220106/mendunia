import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Saya")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Text("KJ", style: TextStyle(fontSize: 32)),
            ),
            const SizedBox(height: 16),
            const Text(
              "User KoJaLearn",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text("Level 5 • 450 XP • Streak 3 hari"),
            const SizedBox(height: 32),
            _buildProfileItem(Icons.star, "Achievement", "5 badge terkumpul"),
            _buildProfileItem(
              Icons.history,
              "Riwayat Belajar",
              "Terakhir: Hangeul",
            ),
            _buildProfileItem(Icons.settings, "Pengaturan", "Tema, Notifikasi"),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text("Keluar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[300],
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurple),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
