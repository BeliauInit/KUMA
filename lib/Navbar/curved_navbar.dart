// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuma_apps/Pages/Home_Page.dart';
import 'package:kuma_apps/Pages/bookmark_page.dart';
import 'package:kuma_apps/Pages/grimoires_page.dart';

class CihuyNavbar extends StatefulWidget {
  final int selectedItems;
  const CihuyNavbar({
    super.key,
    required this.selectedItems,
  });

  @override
  State<CihuyNavbar> createState() => _CihuyNavbarState();
}

class _CihuyNavbarState extends State<CihuyNavbar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedItems;
  }

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });

    String routeName;
    if (index == 0) {
      routeName = '/home';
    } else if (index == 1) {
      routeName = '/grimoires';
    } else {
      routeName = '/bookmark';
    }

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => getPage(routeName),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  Widget getPage(String routeName) {
    // Replace with your actual page widgets
    switch (routeName) {
      case '/home':
        return HomePage();  // Placeholder, replace with your HomePage widget
      case '/grimoires':
        return GrimoiresPage();  // Placeholder, replace with your GrimoiresPage widget
      case '/bookmark':
        return BookmarkPage();  // Placeholder, replace with your BookmarkPage widget
      default:
        return HomePage();  // Fallback to HomePage if routeName is unrecognized
    }
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.black54,
      color: Color(0xFFF9CB55),
      animationCurve: Curves.fastEaseInToSlowEaseOut,
      animationDuration: Duration(milliseconds: 400),
      onTap: changeSelectedNavBar,
      items: [
        Icon(
          Icons.home_filled,
          size: 32,
          color: Color(0xCB000000),
        ),
        Icon(
          CupertinoIcons.book_fill,
          size: 32,
          color: Color(0xCB000000),
        ),
        Icon(
          Icons.bookmark,
          size: 32,
          color: Color(0xCB000000),
        ),
      ],
    );
  }
}
