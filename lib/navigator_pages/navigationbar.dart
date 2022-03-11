import 'package:flutter/material.dart';
import 'package:newmatromany/navigator_pages/favorite.dart';
import 'package:newmatromany/navigator_pages/home_page.dart';
import 'package:newmatromany/navigator_pages/search.dart';
import 'package:newmatromany/navigator_pages/setting.dart';
class NavigatorBar extends StatefulWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  List pages = [
    HomePage(),
    Search(),
    Favorite(),
    Settings(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: 0,
        type: BottomNavigationBarType.shifting,
        onTap: onTap,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        unselectedItemColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Favorite",icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Settings",icon: Icon(Icons.settings))
        ],
      ),

    );
  }
}
