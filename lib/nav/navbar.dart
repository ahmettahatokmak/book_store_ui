import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:book_store_ui/colors.dart';
import 'package:book_store_ui/screens/basket.dart';
import 'package:book_store_ui/screens/bookmark.dart';
import 'package:book_store_ui/screens/home.dart';
import 'package:book_store_ui/screens/settings.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = const[
    Home(),
    Bookmark(),
    Basket(),
    Settings()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: pages.elementAt(currentIndex),

    bottomNavigationBar: BottomNavigationBar(
    items:const[
    BottomNavigationBarItem(icon: Icon(EvaIcons.home),label: ""),
    BottomNavigationBarItem(icon: Icon(EvaIcons.bookmark),label: ""),
    BottomNavigationBarItem(icon: Icon(EvaIcons.shoppingCart),label: ""), 
    BottomNavigationBarItem(icon: Icon(EvaIcons.settings2),label: ""),],
    currentIndex: currentIndex,
    selectedItemColor: kPurple,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
    onTap:  (index){
      setState(() {
        currentIndex=index;});},
    elevation: 0,
    type: BottomNavigationBarType.fixed,

),
    );
  }
}