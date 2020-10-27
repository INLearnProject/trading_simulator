import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'controllers/trading_controller.dart';

import 'screens/signin_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/register_screen.dart';
import 'screens/user_home_screen.dart';

import 'constants/routes_constant.dart';

void main() => runApp(TradingSimulator());

class TradingSimulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TradingController>(
      create: (context) => TradingController(),
      child: MaterialApp(
        title: 'Trainning Flutter',
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesConstant.welcome,
        routes: {
          RoutesConstant.welcome: (context) => WelcomeScreen(),
          RoutesConstant.register: (context) => RegisterScreen(),
          RoutesConstant.signin: (context) => SigninScreen(),
          RoutesConstant.userHome: (context) => UserHomeScreen(),
        },
      ),
    );
  }
}
