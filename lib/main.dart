// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:kuma_apps/Pages/bookmark_page.dart';
import 'package:kuma_apps/Pages/detail_manga.dart';
import 'package:kuma_apps/Pages/grimoires_page.dart';
import 'package:kuma_apps/Pages/home_page.dart';
import 'package:kuma_apps/Pages/splash_screen.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => Splash(),
        '/home': (context) => HomePage(),
        '/grimoires': (context) => GrimoiresPage(),
        '/bookmark': (context) => BookmarkPage(),
        '/detail': (context) => DetailManga(),
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