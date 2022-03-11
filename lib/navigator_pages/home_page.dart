import 'package:flutter/material.dart';
import 'package:newmatromany/widgets.dart';
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
          // itemCount: 5,
          itemBuilder: (_, index)
      {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/image/1.jpg"
              ),
                  fit: BoxFit.cover,
            ),
          ),
          child: Card(
            color: Colors.white.withOpacity(0.5),
            child: Column(
              children: [
                Fullname(text: "peter Parker")
              ],
            ),
          )
        );

      }
      )
    );
  }
}
