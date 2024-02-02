// code here
import 'package:flutter/material.dart';

class This extends StatefulWidget {
  const This({super.key});

  @override
  State<This> createState() => _ThisState();
}

class _ThisState extends State<This>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}