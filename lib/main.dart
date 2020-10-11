import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'screens/register_screen.dart';

import 'constants/routes_constant.dart';

void main() => runApp(TradingSimulator());

class TradingSimulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trainning Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesConstant.welcome,
      routes: {
        RoutesConstant.welcome: (context) => WelcomeScreen(),
         RoutesConstant.register: (context) => RegisterScreen(),
      },
    );
  }
}
