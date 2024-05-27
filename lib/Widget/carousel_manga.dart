// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselManga extends StatelessWidget {
  CarouselManga({super.key});

  final List<String> mangaimages = [
    'assets/images/AC Shadow.jpg',
    'assets/images/Astron.jpg',
    'assets/images/DD2.jpg',
    'assets/images/GoT DC.jpg',
    'assets/images/Readnt.jpg',
    'assets/images/GoT Legends.jpg',
    'assets/images/Guitar Girls.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'FOR YOU',
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

        SizedBox(height: 12,),

        Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeFactor: 0.25,
              height: 250,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.75,
            ),
            items: mangaimages.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: InkWell(
                      onTap: () {
                        // Handle image tap
                        print('Tapped on: $imagePath');
                        // perform navigation or any other action here
                        context.go('/detail');
                      },
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
