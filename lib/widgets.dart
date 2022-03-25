import 'package:flutter/material.dart';

//FULLNAME CLASS
class Fullname extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  Fullname({Key? key,
    this.size=30,
    required this.text,
    this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
// AGE CLASS
class Age extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  Age({Key? key,
    this.size=15,
    required this.text,
    this.color=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
// CARD WIDGET TO USE IN APP AT HOME PAGE IN FAVORITE
class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey,
      ),
      alignment: Alignment.bottomCenter,
      height: 500,
      width: 350,
      child: const Card(
        margin: EdgeInsets.all(10),
        shadowColor: Colors.blueGrey,
        semanticContainer: true,
        color: Colors.blueGrey,
        elevation: 2,
        borderOnForeground: true,

      ),
    );
  }
}


class TextWid extends StatelessWidget {
  const TextWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Name:",
          style: TextStyle(
        color: Colors.white,
            fontWeight: FontWeight.bold,


    ),
    );
  }
}

//SETTINGS PROFILE MENU
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.white.withOpacity(0.9),

        ),
        onPressed: press,
        child: Row(
          children: [
            // SizedBox(width: 5),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

//PROFILE PICTURE CLASS================================================
class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 60,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/image/5.jpg"),
      ),
    );
  }
}