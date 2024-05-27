// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuma_apps/Component/button.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF9CB55), Color(0xFF292419)],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset(
                    'assets/images/logo/Logo Black.png',
                    fit: BoxFit.contain,
                    scale: 2,
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: Color(0xFF171717),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Text(
                          'Login',
                          style: GoogleFonts.outfit(
                            fontSize: 40,
                            color: Color(0xFFF9CB55),
                          ),
                        ),
                        SizedBox(height: 20),
                        _buildTextField('Email'),
                        SizedBox(height: 20),
                        _buildTextField('Kata sandi', obscureText: true),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(color: Color(0xFF534E59)),
                          ),
                        ),
                        SizedBox(height: 20),

                        btnDefault(onTap: () {
                          context.go('/navbar');
                        }, text: 'Masuk'),

                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            context.go('/signUp');
                          },
                          child: Text(
                            'Belum mempunyai akun? Daftar',
                            style: GoogleFonts.outfit(
                                color: Color(0xFF534E59),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Color(0xFF5A5066), fontSize: 16),
        ),
        SizedBox(height: 8),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 81, 79, 75),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(
              color: Colors.white), // User input text color set to white
        ),
      ],
    );
  }
}
