// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:kuma_apps/Pages/home_page.dart';
import 'package:kuma_apps/Pages/splash_screen.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/splash': (context) => Splash(),
        '/home': (context) => HomePage(),
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}