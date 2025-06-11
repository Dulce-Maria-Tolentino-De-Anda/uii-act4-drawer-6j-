import 'package:flutter/material.dart';
import 'package:myapp/%20HomePage.dart';
import 'package:myapp/news.dart';
import 'package:myapp/profile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/profile": (context) => Profile(title: "Profile"),
        "/news": (context) => News(title: "News"),
      },
    );
  }
}