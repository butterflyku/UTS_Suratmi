// import 'package:flutter/material.dart';
// import 'splash_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: SplashScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Forgot_Password_Screen.dart';
import 'package:flutter_application_1/account_screen.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/profile_screen.dart';
import 'package:flutter_application_1/splash_screen.dart';

void main() {
  runApp(const Melody());
}

class Melody extends StatelessWidget {
  const Melody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',

      // Tema Aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(color: Color.fromARGB(221, 85, 2, 2), fontSize: 16),
          headlineMedium: TextStyle(
              color: Colors.blueAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),

      // // Tema Mode Gelap
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.blue,
      //   textTheme: const TextTheme(
      //     bodyMedium: TextStyle(
      //         color: Color.fromARGB(255, 255, 250, 250), fontSize: 16),
      //     headlineMedium: TextStyle(
      //         color: Color.fromARGB(255, 255, 250, 250),
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold),
      //   ),
      // ),

      themeMode:
          ThemeMode.system, // Mengikuti pengaturan sistem (mode terang/gelap)

      // Menambahkan Locale untuk dukungan bahasa
      locale: const Locale('id', 'ID'), // Bahasa Indonesia

      // Rute Named
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/account': (context) => const AccountScreen(),
      },

      // Penanganan Error (Jika rute tidak ditemukan)
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('Halaman Tidak Ditemukan')),
          body: const Center(child: Text('404 - Halaman tidak ditemukan')),
        ),
      ),
    );
  }
}

class KelolaAkunScreen {
  const KelolaAkunScreen();
}
