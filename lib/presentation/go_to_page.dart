import 'package:animations/presentation/test_animation.dart';
import 'package:flutter/material.dart';

class GoToPage extends StatelessWidget {
  const GoToPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const TestAnimation()));
        }, child: const Text('Next')),
      ),
    );
  }
}
