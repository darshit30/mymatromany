
import 'package:flutter/material.dart';
import 'package:newmatromany/navigator_pages/home_page.dart';
import 'package:newmatromany/register.dart';
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
            opacity: 0.5,

          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                   child: Icon(Icons.person,
                   color: Colors.black,
                     size: 50,
                   ),
                   //Image.asset("assets/Logo/LogoP.png",
                  //     height: 100
                  // ),
                ),
                
                shadowColor: Colors.white.withOpacity(0),
                elevation: 10,
                color: Colors.white.withOpacity(0),
              ),
              //LOGIN TITLE TEXT
              Text("Login",
              style: TextStyle(
                  fontSize: 30,
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
               //   fontStyle: FontStyle.italic,
                  letterSpacing: 1,
                  //   backgroundColor: Colors.green.withOpacity(0.2),
                  // shadows: [
                  //   Shadow(
                  //      // color: Colors.blueGrey,
                  //    //   offset: Offset(2,3)
                  //       //blurRadius:9
                  // ),
                  // ]

              )),
              SizedBox(
                height:100,
              ),
              //CONTAINER OF USER NAME, PASSWORD,FORGOT PASSWORD
              Container(
                width: 300,
                child: Column(
                  children: [

                    //TEXTFIELD OF ENTER USER ID
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,
                        size: 20),
                      //  hintText: 'UserId',
                        labelText: "Enter User Name",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //TEXTFIELD OF ENTER PASSWORD
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.password_sharp,
                        size: 20),

                        //  hintText: 'UserId',
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:200),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue, fontSize: 10),
                        ),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //LOGIN BUTTON
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
                  color: Colors.blue.withOpacity(0.7),
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
                //ALREADY HAVE ACCOUNT
                Padding(
                  padding: const EdgeInsets.only(left:100),
                  child: Row(
                    children: [
                      Text("Don't Have Account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),),
                    ],
                  ),
                )
            ],
          ),
        ),

      ),
    );
  }
}