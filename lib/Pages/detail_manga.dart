// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuma_apps/Component/button.dart';

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
            context.go('/navbar');
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        backgroundColor: Color(0x0),
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
      backgroundColor: Color(0x0),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset(
                            'assets/images/Guitar Girls.jpg',
                            fit: BoxFit.cover,
                            width: 400,
                            height: 280,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Guitar Girl!!!',
                      style: GoogleFonts.permanentMarker(
                        fontWeight: FontWeight.w300,
                        fontSize: 40,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    btnDetailMa(onTap: () {
                      print('This feature is offline');
                    }, text: 'Continue',)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
