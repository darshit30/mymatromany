import 'package:flutter/material.dart';
import 'package:newmatromany/LoginPage.dart';
import 'package:newmatromany/startapp.dart';

import 'navigator_pages/navigationbar.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 950,
        width: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Wallpaper/BGimage.png'),
            fit: BoxFit.cover,
            opacity: 0.4,

          ),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(top:14,right: 325),
                child: TextButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const StartApp()));
                  },
                    child: const Icon(
                        Icons.arrow_back,
                    color: Colors.white,
                    semanticLabel: "Back to Login",
                    size: 30,)
                    ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.person_add_alt_1,
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
              const Text("Sign Up",
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
              const SizedBox(
                height: 30,
              ),
              //FORM QUARIES
              Container(
                width: 300,
                child: Column(

                  children: const [

                    //TEXTFIELD OF ENTER USER ID
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "First Name",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //TEXTFIELD OF ENTER PASSWORD
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.drive_file_rename_outline,
                            size: 20),

                        //  hintText: 'UserId',
                        labelText: "Last Name",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.mobile_friendly,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Mobile Number",
                        prefixText: "+91",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.home,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Address",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.email,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Email Address",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.language,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Mother Language",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.password,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.password,
                            size: 20),
                        //  hintText: 'UserId',
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                      ),

                      textDirection: TextDirection.ltr,
                      obscureText: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              //SIZEDBUTTON
              const SizedBox(
                height: 20,
              ),
              //SIGN UP BUTTONS
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
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  // gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink,Colors.red],

                  // ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationBarPage()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              //ALREADY HAVE A ACOOUNT
              Padding(
                padding: const EdgeInsets.only(left:90,bottom: 150),
                child: Row(
                  children: [
                    const Text("Already Have Account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
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
