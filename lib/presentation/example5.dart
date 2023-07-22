import 'package:flutter/material.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animationColor;
  late Animation animationSize;
  late Animation borderSizeAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animationColor = ColorTween(begin: Colors.red, end: Colors.green).animate(controller);

    animationSize = Tween<double>(begin: 100.0, end: 300.0).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn,
    ))
          ..addListener(() {});
    borderSizeAnimation = Tween<double>(begin: 5.0, end: 50.0).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Animation"),
      ),
      body: Center(
        child: Container(
          height: animationSize.value,
          width: animationSize.value,
          decoration: BoxDecoration(
            color: animationColor.value,
            borderRadius: BorderRadius.circular(borderSizeAnimation.value),
          ),
        ),
      ),
    );
  }
}
