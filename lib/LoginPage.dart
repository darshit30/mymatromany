
import 'package:flutter/material.dart';
import 'package:newmatromany/homepage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Wallpaper/BGimage.png'),
            fit: BoxFit.cover,
            opacity: 0.2,

          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text("Login",
              style: TextStyle(
                  fontSize: 30,
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
               //   fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  //   backgroundColor: Colors.green.withOpacity(0.2),
                  shadows: [
                    Shadow(
                        color: Colors.blueGrey,
                        offset: Offset(2,3),
                        blurRadius:9)
                  ]

              )),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                      //  hintText: 'UserId',
                        labelText: "Enter User Id",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: false,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                      //  hintText: 'UserId',
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
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
                  color: Colors.green.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                 // gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink,Colors.red],

                 // ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}