import 'package:flutter/material.dart';
import 'package:trading_simulator/pages/views/home.dart';
import 'package:trading_simulator/pages/widget/parametres/app_bar.dart';
import 'package:trading_simulator/pages/widget/parametres/cardvue_params.dart';
import 'package:trading_simulator/pages/widget/parametres/cardvue_profil.dart';
import 'package:trading_simulator/pages/widget/parametres/imgprofil.dart';

class ParametrePage extends StatefulWidget {
  @override
  _ParametrePageState createState() => _ParametrePageState();
}

class _ParametrePageState extends State<ParametrePage> {
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
                    'Trainning Flutter crypto',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
              content: Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: Text('Voulez-vous deconnecter')),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    'Non',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
                RaisedButton(
                  color: Colors.black,
                  child: Text(
                    'Oui',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
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
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              appbar(),
              cardVueProfil(),
              imgProfilUser(),
              Positioned(
                  top: 280,
                  left: 30,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Autres paramètres',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          height: 5,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              cardAutresparams(),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 300,
                  child: RaisedButton(
                    elevation: 10,
                    color: Color.fromRGBO(39, 28, 12, 1),
                    child: Text(
                      'DECONNECTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {
                      print('Deconnecter');
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(
                      //         builder: (context) => ParametrePage()));
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
