
import 'package:flutter/material.dart';

class Fullname extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  Fullname({Key? key,
    this.size=30,
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