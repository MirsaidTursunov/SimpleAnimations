import 'dart:math';

import 'package:flutter/material.dart';

class Example22 extends StatefulWidget {
  const Example22({Key? key}) : super(key: key);

  @override
  State<Example22> createState() => _Example22State();
}

class _Example22State extends State<Example22>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);



    animation = Tween<Offset>(begin: Offset.zero, end: const Offset(1.5, 0)).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: SizedBox(
        child: SlideTransition(
          position: animation,
          child: Container(
            color: Colors.blue,
            child: const FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}