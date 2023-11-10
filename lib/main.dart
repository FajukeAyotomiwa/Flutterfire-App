import 'package:flutter/material.dart';
import 'package:signin/screens/home.dart';
import 'package:signin/screens/signin.dart';

void main() {
  runApp(MaterialApp(

    routes:  {
      '/home': (context) => Home()

    },
    home: SignIn()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
