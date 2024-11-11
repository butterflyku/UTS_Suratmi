// import 'package:flutter/material.dart';
// import 'next_screen.dart'; // Impor halaman berikutnya
// import 'profile_screen.dart'; // Halaman profil
// import 'settings_screen.dart'; // Halaman pengaturan
// import "notifications_screen.dart"; // Halaman notifikasi

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProfileScreen()),
//               );
//             },
//             tooltip: 'Profile',
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SettingsScreen()),
//               );
//             },
//             tooltip: 'Settings',
//           ),
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const NotificationsScreen()),
//               );
//             },
//             tooltip: 'Notifications',
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Welcome to World of Music',
//               style: TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const NextScreen()),
//                 );
//               },
//               child: const Text('Klik ini untuk mencari musik'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('katalog'),
//         actions: [
//           IconButton(icon: const Icon(Icons.search), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Widget Grid View',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               SizedBox(
//                 height: 150,
//                 child: GridView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 4,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Icon(Icons.person, size: 50),
//                           Text('Artist'),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text('Widget List View',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               ListView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: 2,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: const Icon(Icons.image),
//                       title: const Text('Headline'),
//                       subtitle: const Text('Description text'),
//                       trailing: const Icon(Icons.arrow_forward),
//                       onTap: () {},
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'account_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
//     const AccountScreen(),
//   ];

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       Navigator.pop(context);
//     } else {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
//           BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'account_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   // Halaman yang akan ditampilkan dalam bottom navigation
//   final List<Widget> _pages = [
//     const HomePage(),
//     const AccountScreen(),
//   ];

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       _showLogoutDialog();
//     } else {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }

//   // Dialog konfirmasi logout
//   void _showLogoutDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Logout'),
//           content: const Text('Apakah Anda yakin ingin keluar?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Batal'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).popUntil((route) => route.isFirst);
//               },
//               child: const Text('Keluar'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Melody'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
//           BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// // Tampilan Home Page
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Grid View Widget
//             const Text(
//               'Dengarkan sesuai seleramu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 150,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     elevation: 4,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Item $index',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),

//             // List View Widget
//             const Text(
//               'Lagu Teratasmu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const Icon(Icons.article),
//                   title: Text('Bruno Mars $index'),
//                   subtitle: const Text(
//                       'Deskripsi artikel untuk headline ini dapat diperlihatkan di sini.'),
//                   trailing: const Icon(Icons.arrow_forward_ios),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'account_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   // Halaman yang akan ditampilkan dalam bottom navigation
//   final List<Widget> _pages = [
//     const HomePage(),
//     const AccountScreen(),
//   ];

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       _showLogoutDialog();
//     } else {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }

//   // Dialog konfirmasi logout
//   void _showLogoutDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Logout'),
//           content: const Text('Apakah Anda yakin ingin keluar?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Batal'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).popUntil((route) => route.isFirst);
//               },
//               child: const Text('Keluar'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Melody'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
//           BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// // Tampilan Home Page
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Grid View Widget
//             const Text(
//               'Dengarkan sesuai seleramu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 150,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MusicDetailScreen(
//                             title: 'Item $index',
//                           ),
//                         ),
//                       );
//                     },
//                     child: Card(
//                       elevation: 4,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Item $index',
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),

//             // List View Widget
//             const Text(
//               'Lagu Teratasmu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const Icon(Icons.article),
//                   title: Text('Bruno Mars Songs $index'),
//                   subtitle: const Text(
//                       'Deskripsi artikel untuk headline ini dapat diperlihatkan di sini.'),
//                   trailing: const Icon(Icons.arrow_forward_ios),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => MusicDetailScreen(
//                           title: 'Taylor Swift Songs $index',
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Halaman Detail Musik
// class MusicDetailScreen extends StatelessWidget {
//   final String title;

//   const MusicDetailScreen({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Kembali ke halaman sebelumnya
//           },
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Detail untuk $title',
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'account_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   // Halaman yang akan ditampilkan dalam bottom navigation
//   final List<Widget> _pages = [
//     const HomePage(),
//     const AccountScreen(),
//   ];

//   void _onItemTapped(int index) {
//     if (index == 2) {
//       _showLogoutDialog();
//     } else {
//       setState(() {
//         _selectedIndex = index;
//       });
//     }
//   }

//   // Dialog konfirmasi logout
//   void _showLogoutDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Logout'),
//           content: const Text('Apakah Anda yakin ingin keluar?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Batal'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).popUntil((route) => route.isFirst);
//               },
//               child: const Text('Keluar'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Melody'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
//           BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// // Tampilan Home Page
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Grid View Widget
//             const Text(
//               'Dengarkan sesuai seleramu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 150,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MusicDetailScreen(
//                             title: 'K-pop $index',
//                             songList: [
//                               'kitty cat by kiss Of Life $index',
//                               'Play LOve Game by Kiss Of Life dari Kategori $index',
//                               'Bad News by Kiss Of Life $index',
//                               'Nobody Knows by Kis Of Life $index',
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                     child: Card(
//                       elevation: 4,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'POP $index',
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),

//             // List View Widget
//             const Text(
//               'Lagu Teratasmu',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const Icon(Icons.music_note),
//                   title: Text('Lagu Favorit $index'),
//                   subtitle: const Text('Dengarkan Terus Lagu Favoritmu.'),
//                   trailing: const Icon(Icons.arrow_forward_ios),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => MusicDetailScreen(
//                           title: 'Bruno Mars $index',
//                           songList: [
//                             'Lagu 1 dari Favorit $index',
//                             'Lagu 2 dari Favorit $index',
//                             'Lagu 3 dari Favorit $index',
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Halaman Detail Musik
// class MusicDetailScreen extends StatelessWidget {
//   final String title;
//   final List<String> songList;

//   const MusicDetailScreen(
//       {super.key, required this.title, required this.songList});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: songList.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: const Icon(Icons.music_note),
//             title: Text(songList[index]),
//             trailing: const Icon(Icons.play_arrow),
//             onTap: () {
//               // Implementasikan aksi untuk memutar lagu atau membuka detail lebih lanjut
//             },
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Halaman yang akan ditampilkan dalam bottom navigation
  final List<Widget> _pages = [
    const HomePage(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      _showLogoutDialog();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  // Dialog konfirmasi logout
  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Apakah Anda yakin ingin keluar?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Keluar'),
            ),
          ],
        );
      },
    );
  }

  // Menampilkan dialog profil pengguna
  void _showProfileDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Profil Pengguna'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama: Nama Lengkap'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: email@domain.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('No. Telepon: 08123456789'),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Alamat: Alamat Lengkap'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Melody'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationSettingsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: _showProfileDialog,
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Tampilan Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Grid View Widget
            const Text(
              'Dengarkan sesuai seleramu',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MusicDetailScreen(
                            title: 'Lagu Top $index',
                            songList: [
                              'kitty cat by kiss Of Life $index',
                              'Play Love Game by Kiss Of Life dari Kategori $index',
                              'Bad News by Kiss Of Life $index',
                              'Nobody Knows by Kiss Of Life $index',
                            ],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Lagu 2024 $index',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // List View Widget
            const Text(
              'Lagu Teratasmu',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.music_note),
                  title: Text('Lagu Favorit $index'),
                  subtitle: const Text('Dengarkan Terus Lagu Favoritmu.'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicDetailScreen(
                          title: 'Bruno Mars $index',
                          songList: [
                            'Lagu 1 dari Favorit $index',
                            'Lagu 2 dari Favorit $index',
                            'Lagu 3 dari Favorit $index',
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Pengaturan
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privasi dan Keamanan'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Bahasa'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Bantuan'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

// Halaman Detail Musik
class MusicDetailScreen extends StatelessWidget {
  final String title;
  final List<String> songList;

  const MusicDetailScreen(
      {super.key, required this.title, required this.songList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: songList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(songList[index]),
            trailing: const Icon(Icons.play_arrow),
            onTap: () {
              // Implementasikan aksi untuk memutar lagu atau membuka detail lebih lanjut
            },
          );
        },
      ),
    );
  }
}
