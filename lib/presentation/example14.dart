import 'package:flutter/material.dart';

class ExplicitFourteen extends StatefulWidget {
  const ExplicitFourteen({Key? key}) : super(key: key);

  @override
  State<ExplicitFourteen> createState() => _ExplicitFourteenState();
}

class _ExplicitFourteenState extends State<ExplicitFourteen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlignTransition"),
      ),
      body: SizedBox(
        // height: 400,
        child: AlignTransition(
          alignment: _alignAnimation,
          child: RotationTransition(
            turns: _rotationAnimation,
            child: const Icon(Icons.adb, color: Colors.orange, size: 100,),
          ),
        ),
      ),
    );
  }
}
