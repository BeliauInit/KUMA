// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kuma_apps/Navbar/curved_navigator.dart';
import 'package:kuma_apps/Pages/bookmark_page.dart';
import 'package:kuma_apps/Pages/detail_manga.dart';
import 'package:kuma_apps/Pages/grimoires_page.dart';
import 'package:kuma_apps/Pages/home_page.dart';
import 'package:kuma_apps/Pages/login_page.dart';
import 'package:kuma_apps/Pages/signup_page.dart';
import 'package:kuma_apps/Pages/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => Splash(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/grimoires',
          builder: (context, state) => GrimoiresPage(),
        ),
        GoRoute(
          path: '/bookmark',
          builder: (context, state) => BookmarkPage(),
        ),
        GoRoute(
          path: '/detail',
          builder: (context, state) => DetailManga(),
        ),
        GoRoute(
          path: '/navbar',
          builder: (context, state) => CurvedNavbar(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          path: '/signUp',
          builder: (context, state) => SignupPage(),
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
