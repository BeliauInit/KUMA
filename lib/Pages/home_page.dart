// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuma_apps/Navbar/curved_navbar.dart';
import 'package:kuma_apps/Widget/carousel_manga.dart';
import 'package:kuma_apps/Widget/continue_watch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello Aril',
                        style: GoogleFonts.permanentMarker(
                          fontWeight: FontWeight.w300,
                          fontSize: 40,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            iconSize: 40,
                            icon: Icon(
                              Icons.search,
                              color: Colors.orange,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          IconButton(
                            iconSize: 40,
                            icon: Icon(
                              Icons.settings_rounded,
                              color: Colors.orange,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                ContinueWatch(),

                SizedBox(height: 32),

                CarouselManga(),

                SizedBox(height: 32),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GENRES',
                      style: GoogleFonts.permanentMarker(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                        color: Colors.white30,
                        onPressed: () {
                          return print('Icon Btn Pressed...');
                        },
                        icon: Icon(Icons.arrow_forward_ios_rounded)
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CihuyNavbar(selectedItems: 0),
    );
  }
}
