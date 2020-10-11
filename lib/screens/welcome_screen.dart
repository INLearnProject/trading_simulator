import 'package:flutter/material.dart';
import '../constants/routes_constant.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              child: Text("connexion"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("inscription"),
              onPressed: () {
                Navigator.pushNamed(context, RoutesConstant.register);
              },
            ),
          ],
        ),
      ),
    );
  }
}
