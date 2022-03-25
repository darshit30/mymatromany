import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newmatromany/navigator_pages/navigationbar.dart';
import 'package:newmatromany/screens/register.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userName=TextEditingController();
  TextEditingController _password=TextEditingController();
  final GlobalKey<FormState> _loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 500,
        // decoration:  BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/Wallpaper/BGimage.png'),
        //     fit: BoxFit.cover,
        //     opacity: 0.5,
        //
        //   ),
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _loginkey,
            child: Column(
              children: [
                 SizedBox(
                  height: 150,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                     child: Icon(Icons.person,
                     color: Colors.black,
                       size: 50,
                     ),
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
                    letterSpacing: 1,


                )),
                 SizedBox(
                  height:100,
                ),
                //CONTAINER OF USER NAME, PASSWORD,FORGOT PASSWORD
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [

                      //TEXTFIELD OF ENTER USER ID
                       TextFormField(
                        controller: _userName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person,
                          size: 20),
                          labelText: "Enter User Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter User Name";
                          }
                          return null;
                        },
                         onSaved: (value){},

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //TEXTFIELD OF ENTER PASSWORD
                       TextFormField(
                        controller: _password,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Password";
                          }
                          return null;
                        },
                         decoration: InputDecoration(
                           icon: Icon(Icons.password_sharp,
                               size: 20),
                           labelText: "Enter Password",
                           border: OutlineInputBorder(),
                         ),
                        textDirection: TextDirection.ltr,
                        obscureText: true,
                        textAlign: TextAlign.left,
                      ),
                      //FORGOT PASSWORD
                      Padding(
                        padding: const EdgeInsets.only(left:200),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NavigationBarPage()));
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blue, fontSize: 10),
                          ),),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                   // gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink,Colors.red],

                   // ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_loginkey.currentState!.validate())
                      {
                        RegisterationUser();
                        print("Successful");
                      }
                      else
                      {
                        print("Unsuccessful");
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigationBarPage()));
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
                        const Text("Don't Have Account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),

      ),
    );
  }
}


RegisterationUser() async{
  var APIURL="http://192.168.1.7:8080/PHP/registration.php";
  Map mapedData={
    'userName': _LoginPageState(),
    'password':_LoginPageState(),
  };
  print("JSON DATA::${mapedData}");

  http.Response response=await http.post(Uri.parse(APIURL),body:mapedData);
  var  data =jsonDecode(response.body);
  print("DATA::${data}");
}
