
import 'package:flutter/material.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
        body: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/image/"+images[index]))
                      ),

                      child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 500, left: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                height: 110,
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(children: const [
                                        Text("Tom Stark.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic))
                                      ],),
                                      Row(children: const [
                                        Text("20 Years, From:Newyork",
                                            style: TextStyle(color: Colors.white))
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 570, left: 280),
                              child: Container(
                                decoration: const BoxDecoration(
                                  //borderRadius: BorderRadius.circular(50),
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.cancel_outlined, size: 25,semanticLabel: "Remove",color: Colors.black),
                                  ),
                                ),
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 520, left: 170),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(50),
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.arrow_forward_ios_outlined, size: 10,),
                                ),
                              ),

                            ),
                          ]

                      )
                  ),
                );
              }
          ),

    );
  }
}
