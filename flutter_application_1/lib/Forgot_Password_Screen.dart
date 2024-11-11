// // ignore: file_names
// import 'package:flutter/material.dart'
//     show
//         BorderRadius,
//         BorderSide,
//         BuildContext,
//         Color,
//         Colors,
//         Column,
//         EdgeInsets,
//         ElevatedButton,
//         FontWeight,
//         Image,
//         InputDecoration,
//         MainAxisAlignment,
//         OutlineInputBorder,
//         Padding,
//         RoundedRectangleBorder,
//         Scaffold,
//         SizedBox,
//         StatelessWidget,
//         Text,
//         TextAlign,
//         TextField,
//         TextStyle,
//         Widget;

// class ForgotPasswordScreen extends StatelessWidget {
//   const ForgotPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('Image/logo.png', width: 300),
//             const SizedBox(height: 20),
//             const Text(
//               "Lupa Password",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "Masukkan email Anda dan tunggu kode reset dikirimkan.",
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.black54),
//             ),
//             const SizedBox(height: 20),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: 'Masukkan Email',
//                 labelStyle: TextStyle(color: Colors.black54),
//                 hintText: 'Email',
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       color: Color.fromARGB(255, 187, 111, 174), width: 2.0),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       color: Color.fromARGB(255, 187, 111, 174), width: 1.5),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 158, 195, 226),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: const Text(
//                 "Kirim",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
