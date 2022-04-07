import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:newmatromany/navigator_pages/favorite.dart';
import 'package:newmatromany/navigator_pages/home_page.dart';
import 'package:newmatromany/navigator_pages/search.dart';
class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}
class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex=0;

  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  PageController _pageController=PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: <Widget>[
          HomePage(),
          Search(),
          Favorite(),

        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            // _pageController.animateToPage(index,
            //     duration: Duration(milliseconds: 500), curve: Curves.ease);

          }),
        // selectedIndex: _selectedIndex,
        // animationDuration: Duration(milliseconds: 400),
        showElevation: true,
        items: [
          BottomNavyBarItem(title: Text("Home"),icon: Icon(Icons.home),activeColor: Colors.lightBlueAccent),
          BottomNavyBarItem(title: Text("Search"),icon: Icon(Icons.favorite),activeColor: Colors.lightBlueAccent),
          BottomNavyBarItem(title: Text("Favorite"),icon: Icon(Icons.settings),activeColor: Colors.lightBlueAccent)
        ],
      ),

    );
  }
}
