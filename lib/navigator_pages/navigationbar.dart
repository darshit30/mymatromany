import 'package:flutter/material.dart';
import 'package:newmatromany/navigator_pages/favorite.dart';
import 'package:newmatromany/navigator_pages/home_page.dart';
import 'package:newmatromany/navigator_pages/search.dart';
import 'package:newmatromany/navigator_pages/setting.dart';
class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
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
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home) ),
          BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Favorite",icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Settings",icon: Icon(Icons.settings))
        ],
      ),

    );
  }
}
