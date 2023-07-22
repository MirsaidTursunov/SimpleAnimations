import 'package:flutter/material.dart';

class TestAnimation extends StatefulWidget {
  const TestAnimation({super.key});

  @override
  State<TestAnimation> createState() => _TestAnimationState();
}

class _TestAnimationState extends State<TestAnimation>
    with TickerProviderStateMixin {
  late AnimationController animController;
  late Animation containerSizeController;
  late Animation textSizeController;
  late bool change = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    containerSizeController =
        Tween<double>(begin: 100.0, end: 400.0).animate(CurvedAnimation(
      parent: animController,
      curve: Curves.linear,
      reverseCurve: Curves.bounceIn,
    ));
    animController.addListener(() {
      setState(() {});
    });

    textSizeController = Tween(begin: 20.0, end: 50.0).animate(animController);

    animController.repeat();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("You are win"),
      ),
      body: Center(
        child: Container(
          height: containerSizeController.value,
          width: containerSizeController.value,
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text(
            'Flutter',
            style: TextStyle(fontSize: textSizeController.value),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: ElevatedButton(
            onPressed: () {
              change= !change;
              if (change) {
                animController.repeat();
              } else {
                animController.stop();
              }
            },
            child: const Text('tap')),
      ),
    );
  }
}
