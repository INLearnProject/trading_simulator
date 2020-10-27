import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../constants/routes_constant.dart';

import '../controllers/trading_controller.dart';

import 'components/appbar_component.dart';
import 'components/button_component.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ComponentAppBar(titleAppBar: "").build(),
      body: FutureBuilder(
        future: Provider.of<TradingController>(context).checkIdentity(
          onAuth: () =>
              Navigator.pushReplacementNamed(context, RoutesConstant.userHome),
        ),
        builder: (context, snapshot) {
          // if (snapshot.hasError) {
          //   print(snapshot.error);
          // }
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 48.0,
                  ),
                  ComponentButton(
                    buttonname: "Se connecter",
                    onPressed: () =>
                        Navigator.pushNamed(context, RoutesConstant.signin),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ComponentButton(
                    buttonname: "S'inscrire",
                    onPressed: () =>
                        Navigator.pushNamed(context, RoutesConstant.register),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
