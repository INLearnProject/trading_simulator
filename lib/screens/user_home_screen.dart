import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import '../controllers/trading_controller.dart';

import '../constants/routes_constant.dart';

import 'components/appbar_component.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TradingController _controller =
        Provider.of<TradingController>(context);
    return Scaffold(
      appBar: ComponentAppBar(titleAppBar: ": espace membre").build(),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SafeArea(
          child: FutureBuilder(
            future: _controller.checkIdentity(
              onNoAuth: () => Navigator.pushNamedAndRemoveUntil(context,
                  RoutesConstant.welcome, (Route<dynamic> route) => false),
            ),
            builder: (context, AsyncSnapshot<FirebaseUser> data) {
              if (!data.hasData) {
                return CircularProgressIndicator();
              }
              return Container(
                child: Text("ca passe"),
              );
            },
          ),
        ),
      ),
    );
  }
}
