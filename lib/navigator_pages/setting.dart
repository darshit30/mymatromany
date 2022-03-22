import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          ProfilePic(),
          SizedBox(height: 5),
          Text("User Name",
            style: TextStyle(
                color: Colors.black,
              fontWeight: FontWeight.bold,
                fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}



