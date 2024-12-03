import 'package:flutter/material.dart';
import 'package:ukl_2024/Screen/BioskopPage.dart';
import 'package:ukl_2024/Screen/TiketkuPage.dart';
import 'package:ukl_2024/Screen/HomePage.dart';
import 'package:ukl_2024/Screen/RegistPage.dart';
import 'package:ukl_2024/Screen/TiketPage.dart';
import 'package:ukl_2024/Screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => Splashscreen(),
        '/regist': (context) => Registrasi(),
        '/home': (context) => Homescreen(),
        '/bioskop': (context) => Halamanbioskop(),
        '/tiket': (context) => Tiket(),
        '/tiketku': (context) => Tiketku(),
      },
      // home: TixVip(),
// home: MovieScrol(),
    );
  }
}

