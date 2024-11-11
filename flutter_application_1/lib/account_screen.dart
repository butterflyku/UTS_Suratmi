// ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   _AccountScreenState createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   String _fullName = 'Nama Lengkap';
//   String _email = 'email@domain.com';

//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _nameController.text = _fullName;
//     _emailController.text = _email;
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }

//   // Halaman Edit Profil
//   void _showEditProfileDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Edit Profil'),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   controller: _nameController,
//                   decoration: const InputDecoration(labelText: 'Nama Lengkap'),
//                 ),
//                 TextField(
//                   controller: _emailController,
//                   decoration: const InputDecoration(labelText: 'Email'),
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Batal'),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (_nameController.text.isNotEmpty &&
//                     _emailController.text.isNotEmpty) {
//                   setState(() {
//                     _fullName = _nameController.text;
//                     _email = _emailController.text;
//                   });
//                   Navigator.of(context).pop();
//                 }
//               },
//               child: const Text('Simpan'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Akun')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/profile.png'),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               _fullName,
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               _email,
//               style: const TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: _showEditProfileDialog,
//               child: const Text('Edit Profil'),
//             ),
//             const SizedBox(height: 32),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Kelola Akun'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const ManageAccountScreen()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.notifications),
//               title: const Text('Notifikasi'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const NotificationSettingsScreen()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.privacy_tip),
//               title: const Text('Privacy Policy'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const PrivacyPolicyScreen()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.description),
//               title: const Text('Terms of Service'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const TermsOfServiceScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ManageAccountScreen extends StatelessWidget {
//   const ManageAccountScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kelola Akun'),
//       ),
//       body: ListView(
//         children: const [
//           ListTile(
//             leading: Icon(Icons.password),
//             title: Text('Ganti Kata Sandi'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             leading: Icon(Icons.email),
//             title: Text('Ubah Email'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             leading: Icon(Icons.delete),
//             title: Text('Hapus Akun'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NotificationSettingsScreen extends StatefulWidget {
//   const NotificationSettingsScreen({super.key});

//   @override
//   _NotificationSettingsScreenState createState() =>
//       _NotificationSettingsScreenState();
// }

// class _NotificationSettingsScreenState
//     extends State<NotificationSettingsScreen> {
//   bool _pushNotifications = true;
//   bool _emailNotifications = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notifikasi'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             leading: const Icon(Icons.notifications_active),
//             title: const Text('Notifikasi Push'),
//             trailing: Switch(
//               value: _pushNotifications,
//               onChanged: (value) {
//                 setState(() {
//                   _pushNotifications = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.email),
//             title: const Text('Notifikasi Email'),
//             trailing: Switch(
//               value: _emailNotifications,
//               onChanged: (value) {
//                 setState(() {
//                   _emailNotifications = value;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PrivacyPolicyScreen extends StatelessWidget {
//   const PrivacyPolicyScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Privacy Policy'),
//       ),
//       body: ListView(
//         children: const [
//           ListTile(
//             title: Text('Kebijakan Privasi Umum'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             title: Text('Data yang Dikumpulkan'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             title: Text('Cara Menghubungi Kami'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TermsOfServiceScreen extends StatelessWidget {
//   const TermsOfServiceScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Terms of Service'),
//       ),
//       body: ListView(
//         children: const [
//           ListTile(
//             title: Text('Penggunaan Layanan'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             title: Text('Batasan Tanggung Jawab'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//           ListTile(
//             title: Text('Kewajiban Pengguna'),
//             trailing: Icon(Icons.arrow_forward_ios),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/kelola_akun_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _fullName = 'Nama Lengkap';
  String _email = 'email@domain.com';
  String _phoneNumber = '1234567890';
  String _address = 'Alamat Pengguna';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = _fullName;
    _emailController.text = _email;
    _phoneController.text = _phoneNumber;
    _addressController.text = _address;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  // Halaman Edit Profil
  void _showEditProfileDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: _phoneController,
                  decoration: const InputDecoration(labelText: 'Nomor Telepon'),
                  keyboardType: TextInputType.phone,
                ),
                TextField(
                  controller: _addressController,
                  decoration: const InputDecoration(labelText: 'Alamat'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                if (_nameController.text.isNotEmpty &&
                    _emailController.text.isNotEmpty &&
                    _phoneController.text.isNotEmpty &&
                    _addressController.text.isNotEmpty) {
                  setState(() {
                    _fullName = _nameController.text;
                    _email = _emailController.text;
                    _phoneNumber = _phoneController.text;
                    _address = _addressController.text;
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Akun')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            const SizedBox(height: 16),
            Text(
              _fullName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              _email,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Nomor Telepon: $_phoneNumber',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Alamat: $_address',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showEditProfileDialog,
              child: const Text('Edit Profil'),
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Kelola Akun'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ManageAccountScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifikasi'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationSettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TermsOfServiceScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Service'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const ListTile(
              title: Text('Penggunaan Layanan'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Batasan Tanggung Jawab'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Kewajiban Pengguna'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Penghentian Layanan'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Penyelesaian Sengketa'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Perubahan Syarat dan Ketentuan'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const ListTile(
              title: Text('Kebijakan Privasi Umum'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Data yang Dikumpulkan'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Cara Menggunakan Data'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Keamanan Data'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Hak Pengguna'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Perubahan pada Kebijakan Privasi'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  _NotificationSettingsScreenState createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool _pushNotifications = true;
  bool _emailNotifications = false;
  bool _smsNotifications = false;
  bool _newsUpdates = true;
  bool _appUpdates = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Notifikasi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.notifications_active),
            title: const Text('Notifikasi Push'),
            trailing: Switch(
              value: _pushNotifications,
              onChanged: (value) {
                setState(() {
                  _pushNotifications = value;
                });
                _showSnackBar(value, 'Notifikasi Push');
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Notifikasi Email'),
            trailing: Switch(
              value: _emailNotifications,
              onChanged: (value) {
                setState(() {
                  _emailNotifications = value;
                });
                _showSnackBar(value, 'Notifikasi Email');
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.sms),
            title: const Text('Notifikasi SMS'),
            trailing: Switch(
              value: _smsNotifications,
              onChanged: (value) {
                setState(() {
                  _smsNotifications = value;
                });
                _showSnackBar(value, 'Notifikasi SMS');
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Update Berita'),
            trailing: Switch(
              value: _newsUpdates,
              onChanged: (value) {
                setState(() {
                  _newsUpdates = value;
                });
                _showSnackBar(value, 'Update Berita');
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.system_update),
            title: const Text('Update Aplikasi'),
            trailing: Switch(
              value: _appUpdates,
              onChanged: (value) {
                setState(() {
                  _appUpdates = value;
                });
                _showSnackBar(value, 'Update Aplikasi');
              },
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk menampilkan SnackBar saat mengubah pengaturan notifikasi
  void _showSnackBar(bool value, String notificationType) {
    final status = value ? 'diaktifkan' : 'dinonaktifkan';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$notificationType $status'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
