import 'package:animations/constants.dart';
import 'package:animations/presentation/example22.dart';
import 'package:animations/presentation/example1.dart';
import 'package:animations/presentation/example10.dart';
import 'package:animations/presentation/example11.dart';
import 'package:animations/presentation/example12.dart';
import 'package:animations/presentation/example13.dart';
import 'package:animations/presentation/example14.dart';
import 'package:animations/presentation/example15.dart';
import 'package:animations/presentation/example16.dart';
import 'package:animations/presentation/example17.dart';
import 'package:animations/presentation/example18.dart';
import 'package:animations/presentation/example19.dart';
import 'package:animations/presentation/example2.dart';
import 'package:animations/presentation/example20.dart';
import 'package:animations/presentation/example21.dart';
import 'package:animations/presentation/example3.dart';
import 'package:animations/presentation/example4.dart';
import 'package:animations/presentation/example5.dart';
import 'package:animations/presentation/example6.dart';
import 'package:animations/presentation/example7.dart';
import 'package:animations/presentation/example8.dart';
import 'package:animations/presentation/example9.dart';
import 'package:animations/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case firstScreen:
        return MaterialPageRoute(builder: (_) => const ExampleOne());
      case secondScreen:
        return MaterialPageRoute(builder: (_) => const ExampleTwo());
      case thirdScreen:
        return MaterialPageRoute(builder: (_) => const ExampleThree());
      case fourthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleFourth());
      case fifthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleFive());
      case sixthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleSix());
      case seventhScreen:
        return MaterialPageRoute(builder: (_) => const ExampleSeven());
      case eighthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleEight());
      case ninthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleNine());
      case tenthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleTen());
      case eleventhScreen:
        return MaterialPageRoute(builder: (_) => const ExampleEleven());
      case twelveScreen:
        return MaterialPageRoute(builder: (_) => const ExampleTwelve());
      case thirteenScreen:
        return MaterialPageRoute(builder: (_) => const ExampleThirteen());
      case fourteenScreen:
        return MaterialPageRoute(builder: (_) => const ExplicitFourteen());
      case fifteenScreen:
        return MaterialPageRoute(builder: (_) => const ExampleFifteen());
      case sixteenScreen:
        return MaterialPageRoute(builder: (_) => const ExampleSixteen());
      case seventeenthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleSeventeen());
      case eighteenthScreen:
        return MaterialPageRoute(builder: (_) => const ExampleEighteen());
      case nineteenthScreen:
        return MaterialPageRoute(builder: (_) => const Example19());
      case twentyScreen:
        return MaterialPageRoute(builder: (_) => const Example20());
      case twentyFirstScreen:
        return MaterialPageRoute(builder: (_) => const Example21());
      case twentySecondScreen:
        return MaterialPageRoute(builder: (_) => const Example22());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route${settings.name}')),
                ));
    }
  }
}
