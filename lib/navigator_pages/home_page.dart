
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
      body:Container(
              decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/Wallpaper/BGimage.png'),
              fit: BoxFit.contain,
              opacity: 0.5,

          ),
          ),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
          //itemCount: 5,
          itemBuilder: (_, index) {
            return Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),

                child: Stack(
                    children: [
                      Column(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/image/1.jpg"),
                        ],

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 500, left: 20),
                        child: Container(
                          //color: Colors.white.withOpacity(0.0),
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
                            color: Colors.pinkAccent,
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
                              child: Icon(Icons.favorite, size: 25,),
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
            );
          }
          ),
      )
    );
  }
}
