import 'package:flutter/material.dart';
import 'package:gym/constants.dart';
import 'package:gym/screens/homeScreen.dart';
import 'package:gym/screens/meditation.dart';
import 'package:gym/screens/onboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gym',
        routes: <String, WidgetBuilder>{
          '/meditation': (BuildContext context) => const MeditationScreen(),
          '/home': (BuildContext context) => const HomeScreen()
        },
        theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor),
          primarySwatch: Colors.blue,
        ),
        home: const OnboardingScreen());
  }
}
