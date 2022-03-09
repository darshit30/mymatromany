
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'LoginPage.dart';
class StartApp extends StatelessWidget {
  const StartApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
      Image.asset("assets/Wallpaper/Shaadi.png",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
      ),
      Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      // backgroundColor: Colors.transparent,
      // elevation: 0.0,
      // ),
          body:
        Column(

          children: [
            // LOGO
            Padding(
              padding: const EdgeInsets.only(top:150,left: 50),
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/Logo/Logo.png',
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),

                ),
                shadowColor: Colors.pink,
                elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            // SIZED_BOX
            SizedBox(
              height: 10,
            ),
            //TEXT
            Padding(
              padding: const EdgeInsets.only(left:50),
              child: Text("shaadi.com",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

              )
              ),
            ),
            // SIZED_BOX
            SizedBox(
              height: 10,
            ),
            // CONTAINER
            Padding(
              padding: const EdgeInsets.only(top:150,left:50),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.grey),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 5,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent],
                    tileMode: TileMode.clamp,

                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
            ),
            // SIZED_BOX
            SizedBox(
              height: 10,
            ),
            // FOR REGISTER
            Padding(
              padding: const EdgeInsets.only(left:50),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.grey),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 5,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.5),

                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [Colors.deepPurple,Colors.purpleAccent],
                    //tileMode: TileMode.clamp,

                 ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
            ),
          ],



        ),
      )
    ],
    );
  }
}
