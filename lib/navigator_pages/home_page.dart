
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images=[
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PageView.builder(
        scrollDirection: Axis.vertical,
          //itemCount: 5,
          itemBuilder: (_, index) {
            return Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),
            );
          }
          ),
    );
  }
}
