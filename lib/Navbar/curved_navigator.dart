// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kuma_apps/Pages/bookmark_page.dart';
import 'package:kuma_apps/Pages/grimoires_page.dart';
import 'package:kuma_apps/Pages/home_page.dart';

int selectedIndex = 0;

class CurvedNavbar extends StatefulWidget {
  const CurvedNavbar({
    super.key,
  });

  setIndex(int a) {
    selectedIndex = a;
  }

  @override
  State<CurvedNavbar> createState() => _CurvedNavbarState();
}

class _CurvedNavbarState extends State<CurvedNavbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF171717),
        body: IndexedStack(
          index: selectedIndex,
          children: <Widget>[
            HomePage(),
            GrimoiresPage(),
            BookmarkPage(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Color(0xFF171717),
            color: Color(0xFFF9CB55),
            animationCurve: Curves.fastEaseInToSlowEaseOut,
            animationDuration: Duration(milliseconds: 400),
            index: selectedIndex,
            items: [
              Icon(
                Icons.home_filled,
                size: 32,
                color: Color(0xFF171717),
              ),
              Icon(
                CupertinoIcons.book_fill,
                size: 32,
                color: Color(0xFF171717),
              ),
              Icon(
                Icons.bookmark,
                size: 32,
                color: Color(0xFF171717),
              ),
            ],
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            }),
      ),
    );
  }
}
