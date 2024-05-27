// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrimoiresPage extends StatefulWidget {
  const GrimoiresPage({super.key});

  @override
  State<GrimoiresPage> createState() => _GrimoiresPageState();
}

class _GrimoiresPageState extends State<GrimoiresPage> {
  final List<String> Grimoire = [
    'assets/images/DD2.jpg',
    'assets/images/Readnt.jpg',
    'assets/images/GoT DC.jpg',
    'assets/images/GoT Legends.jpg',
    'assets/images/AC Shadow.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Manga Collections',
              style: GoogleFonts.permanentMarker(
                fontWeight: FontWeight.w300,
                fontSize: 60,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        top: true,
        child: ListView.builder(
          itemCount: Grimoire.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(32),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                    child:
                    Image.asset(Grimoire[index])),
              ),
            );
          },
        ),
      ),
    );
  }
}
