// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ContinueWatch extends StatelessWidget {
  const ContinueWatch({super.key});

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
              'assets/images/Guitar Girls.jpg',
              width: 200,
              height: 280.0,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Guitar Girl!!!, Vol 2',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Chapter 112',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Text(
                'Faril Bintang',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 12),

              Text(
                '95%',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

              Container(
                width: 200,
                height: 12,
                decoration: BoxDecoration(
                  color: Color(0xFFF9CB55),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),

              SizedBox(height: 12),

              Container(
                width: 190,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 12),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFFF9CB55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF151515),
                        fontSize: 24,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
