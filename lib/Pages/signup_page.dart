import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
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
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.90, // Adjusted the height to reduce the gap
            decoration: BoxDecoration(
              color: Color(0xFF292419),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xFFF9CB55),
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildTextField('Nama Lengkap'),
                    SizedBox(height: 20),
                    _buildTextField('Nomor HP'),
                    SizedBox(height: 20),
                    _buildTextField('Email'),
                    SizedBox(height: 20),
                    _buildTextField('Kata Sandi', obscureText: true),
                    SizedBox(height: 20),
                    _buildTextField('Konfirmasi Kata Sandi', obscureText: true),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF9CB55),
                        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Daftar',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sudah punya akun? Masuk',
                        style: TextStyle(color: Color(0xFF534E59), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
          style: TextStyle(color: Colors.white), // User input text color set to white
        ),
      ],
    );
  }
}

