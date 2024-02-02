import 'package:flutter/material.dart';
import 'package:lame/appBar.dart';

class Knowmore_page extends StatefulWidget {
  const Knowmore_page({super.key});

  @override
  State<Knowmore_page> createState() => _Knowmore_pageState();
}

class _Knowmore_pageState extends State<Knowmore_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarr().appbar,
    );
  }
}