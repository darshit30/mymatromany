import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newmatromany/widgets.dart';
class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
              children: [
                Fullname(text: "Hellow"),
              Image.asset("assets/image/1.jpg"),
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.black,
              elevation: 25,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

              children: [
              Image.asset("assets/image/1.jpg"),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            TextWid(),
                            Text("Name",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Row(
                          children: [
                            TextWid(),
                            Text("Name",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Row(
                          children: [
                            TextWid(),
                            Text("Name",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Row(
                          children: [
                            TextWid(),
                            Text("Name",style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
              )
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Image.asset("assets/image/1.jpg"),
                      Column(
                        children: const [
                          Text("Name: Name Surname"),
                          Text("Age: Age"),
                          Text("Community: Hindi"),
                          Text("Profession: Profession"),

                        ],
                      )
                    ],
                  )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.black,
                  elevation: 25,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Image.asset("assets/image/1.jpg"),
                      Column(
                        children: const [
                          Text("Name: Name Surname"),
                          Text("Age: Age"),
                          Text("Community: Hindi"),
                          Text("Profession: Profession"),

                        ],
                      )
                    ],
                  )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(

            )
          ],
    ),
    )
    );
  }
}
