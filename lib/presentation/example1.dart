import 'dart:math';
import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Color iconColor = Colors.black;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = Tween<double>(begin: 0, end: 4 * pi).animate(
        CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOutCubic,
      reverseCurve: Curves.bounceIn,
    ))
      ..addListener(() {
        setState(() {
          Future.delayed(Duration(seconds: 2)).then((value) {
            iconColor = Colors.red;
          });
        });
      });
    animationController.repeat();
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
        title: const Text("Transform Rotate"),
        actions: [
          IconButton(
            onPressed: () {
              animationController.reverse();
            },
            icon: const Icon(
              Icons.shopping_basket_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Icon(
            Icons.adb,
            color: iconColor,
            size: 150,
          ),
        ),
      ),
    );
  }
}
