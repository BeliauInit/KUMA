// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Column(
       children: [
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8)
           ),
           child: Text('Test'),
         )
       ],
      ),
    );
  }
}
