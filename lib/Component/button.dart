// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Button Default with Icons
class btnDefaultIco extends StatefulWidget {
  final void Function()? onTap;
  final String text;

  const btnDefaultIco({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<btnDefaultIco> createState() => _btnDefaultIcoState();
}

class _btnDefaultIcoState extends State<btnDefaultIco> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(36.0, 16.0, 36.0, 16.0),
        decoration: BoxDecoration(
            color: Color(0xFFF9CB55),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(color: Colors.transparent)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                widget.text,
                style: GoogleFonts.outfit(
                  color: Color(0xFF151515),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  letterSpacing: 0.36,
                )
            ),
            const SizedBox(
              width: 12,
            ),
            Icon(
              Icons.play_arrow,
              color: Color(0xFF151515),
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}

// Button Default
class btnDefault extends StatefulWidget {
  final void Function()? onTap;
  final String text;

  const btnDefault({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<btnDefault> createState() => _btnDefaultState();
}

class _btnDefaultState extends State<btnDefault> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 16.0, 40.0, 16.0),
        decoration: BoxDecoration(
            color: Color(0xFFF9CB55),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(color: Colors.transparent)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                widget.text,
                style: GoogleFonts.outfit(
                  color: Color(0xFF151515),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  letterSpacing: 0.36,
                )
            ),
          ],
        ),
      ),
    );
  }
}

//btnDetailManga
class btnDetailMa extends StatefulWidget {
  final void Function()? onTap;
  final String text;

  const btnDetailMa({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<btnDetailMa> createState() => _btnDetailMaState();
}

class _btnDetailMaState extends State<btnDetailMa> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        decoration: BoxDecoration(
            color: Color(0xFFF9CB55),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(color: Colors.transparent)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                widget.text,
                style: GoogleFonts.permanentMarker(
                  color: Color(0xFF151515),
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  letterSpacing: 0.36,
                )
            ),
          ],
        ),
      ),
    );
  }
}