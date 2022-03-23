import 'package:flutter/material.dart';
import 'package:newmatromany/screens/LoginPage.dart';
import 'package:newmatromany/screens/startapp.dart';
import '../navigator_pages/navigationbar.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override

  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _fullName=TextEditingController();
  TextEditingController _userName=TextEditingController();
  TextEditingController _mobileNumber=TextEditingController();
  TextEditingController _city=TextEditingController();
  TextEditingController _state=TextEditingController();
  TextEditingController _country=TextEditingController();
  TextEditingController _emailAddress=TextEditingController();
  TextEditingController _motherLanguage=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _confirmPassword=TextEditingController();
  final GlobalKey<FormState> _registerkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 950,
        width: 500,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/Wallpaper/BGimage.png'),
        //     fit: BoxFit.cover,
        //     opacity: 0.4,
        //
        //   ),
        // ),

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
              SizedBox(
                width: 300,
                child: Form(
                  key: formKey,
                  child: Column(

                    children: [

                      //TEXTFIELD OF ENTER FULL NAME
                      TextFormField(
                        controller: _fullName,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person,
                              size: 20),
                          //  hintText: 'UserId',
                          labelText: "Full Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Full Name";
                          }
                          return null;
                        },

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER USER NAmE
                      TextFormField(
                        controller: _userName,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter User Name";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person,
                              size: 20),
                          //  hintText: 'UserId',
                          labelText: "UserName",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        obscureText: true,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER MOBILE NUMBER
                      TextFormField(
                        controller: _mobileNumber,
                        keyboardType: TextInputType.number,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Mobile Number";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER CITY
                      TextFormField(
                        controller: _city,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter city";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.home,
                              size: 20),
                          labelText: "City",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER CITY
                      TextFormField(
                        controller: _state,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter State";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.home_work,
                              size: 20),
                          labelText: "State",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER COUNTRY
                      TextFormField(
                        controller: _country,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Full Name";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.home_outlined,
                              size: 20),
                          //  hintText: 'UserId',
                          labelText: "Country",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER EMAIL ADDRESS
                      TextFormField(
                        controller: _emailAddress,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Full Name";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email,
                              size: 20),
                          labelText: "Email Address",
                          //suffixText: "@gmail.com",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF MOTHER LANGUAGE
                      TextFormField(
                        controller: _motherLanguage,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter Mother Language";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 5,
                      ),
                      //TEXTFIELD OF ENTER PASSWORD
                      TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter password";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password,
                              size: 20),
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),

                        textDirection: TextDirection.ltr,
                        obscureText: true,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //CONFIRM PASSWORD
                      TextFormField(
                        controller: _confirmPassword,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty){
                            return "Re-Enter your Password";
                          }
                          if(_password.text !=_confirmPassword.text){
                            return "Password Do not match";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
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
                child: ElevatedButton(
                  onPressed: () {
                    if(_registerkey.currentState!.validate())
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              //ALREADY HAVE A ACCOUNT
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

  Future RegisterationUser() async{
    var APIURL="";
    Map mapedData={};

  }
}
