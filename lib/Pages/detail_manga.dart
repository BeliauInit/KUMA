// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuma_apps/Navbar/curved_navbar.dart';

class DetailManga extends StatefulWidget {
  const DetailManga({super.key});

  @override
  State<DetailManga> createState() => _DetailMangaState();
}

class _DetailMangaState extends State<DetailManga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Chapter 112',

              style: GoogleFonts.permanentMarker(
                fontWeight: FontWeight.w300,
                fontSize: 60,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'Page 87',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.normal,
                fontSize: 32,
                color: Colors.white,
                letterSpacing: 0.32,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xCB000000),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/Guitar Girls.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                color: Color(0x00000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
