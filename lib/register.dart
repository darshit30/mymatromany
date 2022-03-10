import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newmatromany/startapp.dart';

import 'homepage.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 900,
          width: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Wallpaper/BGimage.png'),
              fit: BoxFit.cover,
              opacity: 0.4,

            ),
          ),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(top:12,right: 325),
                child: TextButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const StartApp()));
                  },
                    child: const Icon(
                        Icons.arrow_back,
                    color: Colors.white,)
                    ),
              ),
              Text("Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                        color: Colors.blueGrey,
                        offset: Offset(2,3),
                        blurRadius:9)
                  ]
                )
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Emter First Name",
                    //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Emter Last Name",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Mobile Number",
                      prefixText: "+91 ",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder(),

                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Address",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email Adress",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Mother Tounge",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",

                      helperText: "Must include A,a,@,#,%,&,* and 1-9",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                width: 300,

                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      helperText: "Password and Confirm Password must be same",
                      //icon: Icon(Icons.drive_file_rename_outline),
                      border: OutlineInputBorder()
                  ),
                  obscureText: true,
                ),
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
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
