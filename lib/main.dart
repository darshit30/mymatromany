import 'package:flutter/material.dart';
import 'package:newmatromany/database.dart';
import 'package:newmatromany/startapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  void initState(){
    DatabaseHelper().initializeDB().then((value) =>
    {
      print('DATABASE INITIALIZE SUCCESSFULLY:::'+value.path)
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const StartApp(),
    );
  }
}
