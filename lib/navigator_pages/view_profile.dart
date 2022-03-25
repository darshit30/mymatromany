import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newmatromany/widgets.dart';
class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: (
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  [
                    ProfilePic(),
                    //Name
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("Name:"),
                        ],
                      ),
                    ),
                    TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                    //userName
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("UserName:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //Mobile Number
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("Mobile Number:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //City
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("City:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //State
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("State:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //Contry
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("Country:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //MotherKLanguage
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("Mother Language:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    //Password
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Row(
                        children: [
                          Text("Password:"),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

    ],
    )
    )
        ),
      ),
    );
  }
}
