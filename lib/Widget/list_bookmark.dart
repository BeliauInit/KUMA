// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/GoT DC.jpg',
              width: 200,
              height: 280.0,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GoT DC, Vol 1',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Chapter 1',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(
                'Faril Aiman Inad',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '80%',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 200,
                height: 12,
                decoration: BoxDecoration(
                  color: Color(0xB3F9CB55),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
