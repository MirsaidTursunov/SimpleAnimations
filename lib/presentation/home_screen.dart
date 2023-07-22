import 'package:animations/presentation/mixin/home_mixin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text("Flutter Animations"),
      ),
      body: CustomScrollView(slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            delegate: SliverChildBuilderDelegate(
                childCount: routeNames.length,
                    (context, index) =>
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, routeNames[index]);
                      },
                      child: Container(
                        color: Colors.cyan,
                        alignment: Alignment.center,
                        child: Text('Example ${index + 1}'),
                      ),
                    )),
          ),
        ),
      ]),
    );
  }
}