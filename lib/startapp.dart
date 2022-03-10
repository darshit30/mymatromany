
import 'package:flutter/material.dart';
import 'register.dart';
import 'LoginPage.dart';

class StartApp extends StatelessWidget {
  const StartApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 500,
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Wallpaper/BGimage.png'),
            fit: BoxFit.cover,
          opacity: 0.4,

            ),
        ),
          child: Column(
           children: [
             //Card of logo
             SizedBox(
               height: 180,
             ),
             Text("India",
                 style: TextStyle(
                     fontSize: 50,
                     color:Colors.black,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                     letterSpacing: 3,
                     wordSpacing: 5,
                   //  backgroundColor: Colors.orange.withOpacity(0.2),
                     shadows: [
                       Shadow(
                           color: Colors.white,
                           offset: Offset(3,3),
                           blurRadius:10)
                     ]
                 )
             ),
             Text("Matrimony",
                 style: TextStyle(
                     fontSize: 50,
                     color:Colors.black,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                     letterSpacing: 3,
                  //   backgroundColor: Colors.green.withOpacity(0.2),
                     shadows: [
                       Shadow(
                           color: Colors.white,
                           offset: Offset(3,3),
                           blurRadius:10)
                     ]

                 )),
             SizedBox(
               height: 5,
             ),
             //Text of Appname,
             SizedBox(
               height: 270,
             ),
               //SIGN UP
               Container(
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
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                       gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink,Colors.red],

                ),
                ),
                  child: TextButton(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
      ),
             SizedBox(
               height: 10,
             ),
             //SIGN IN
             Padding(
               padding: const EdgeInsets.all(0.0),
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
                   color: Colors.white.withOpacity(0.4),
                   borderRadius: BorderRadius.all(Radius.circular(50)),
                   gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink,Colors.red],

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
                     style: TextStyle(color: Colors.black, fontSize: 15),
                   ),
                 ),
               ),
             ),

    ],
  ),

  ),
      );
  }
}
