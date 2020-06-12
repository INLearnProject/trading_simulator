import 'package:flutter/material.dart';

import 'package:trading_simulator/app_localizations.dart';
import 'package:trading_simulator/pages/connexion/login.dart';
import 'package:trading_simulator/pages/views/parametres.dart';

//Potter integration view
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onBackPressd() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/logo/logo.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                      child: Text(
                    AppLocalizations.of(context).translate('trainning'),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              content: Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                      AppLocalizations.of(context).translate('connect_out'))),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    AppLocalizations.of(context).translate('non'),
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
                RaisedButton(
                  color: Colors.black,
                  child: Text(
                    AppLocalizations.of(context).translate('oui'),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressd,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    elevation: 10,
                    color: Colors.white,
                    child: Text(
                      AppLocalizations.of(context).translate('setting'),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ParametrePage()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
