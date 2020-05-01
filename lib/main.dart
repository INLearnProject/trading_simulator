import 'package:flutter/material.dart';
import 'package:trading_simulator/pages/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trainning Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
