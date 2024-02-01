import 'package:flutter/material.dart';
import 'package:lame/homepage.dart';
// import 'package:lame/landingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan Application',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
