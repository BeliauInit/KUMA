// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuma_apps/Navbar/curved_navbar.dart';
import 'package:kuma_apps/Widget/continue_watch.dart';

class GrimoiresPage extends StatefulWidget {
  const GrimoiresPage({super.key});

  @override
  State<GrimoiresPage> createState() => _GrimoiresPageState();
}

class _GrimoiresPageState extends State<GrimoiresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCB000000),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ContinueWatch(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CihuyNavbar(selectedItems: 1),
    );
  }
}