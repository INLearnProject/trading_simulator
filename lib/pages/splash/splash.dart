import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trading_simulator/pages/connexion/login.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

    @override
  void initState() {
    super.initState();
    startTime();
  }

startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
}

void navigationPage() {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 28, 17, 100),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/vueone.png',fit: BoxFit.cover,),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/logo/logo1.png',fit: BoxFit.cover,),
          ),
          Container(
            margin: EdgeInsets.only(top: 600),
            alignment: Alignment.bottomCenter,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          )

        ],
      ),
      
    );
  }
}