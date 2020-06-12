import 'package:flutter/material.dart';
import 'package:trading_simulator/pages/connexion/password_forgotten.dart';
import 'package:trading_simulator/pages/connexion/register.dart';
import 'package:trading_simulator/pages/views/home.dart';
import 'package:trading_simulator/app_localizations.dart';

//Potter integration view
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  child: Text(AppLocalizations.of(context).translate('out'))),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    AppLocalizations.of(context).translate('oui'),
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
                RaisedButton(
                  color: Colors.black,
                  child: Text(
                    AppLocalizations.of(context).translate('non'),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressd,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/vuetwo.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/logo/logo1.png',
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context)
                                    .translate('connect'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 5,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: TextField(
                                  cursorColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      labelText: AppLocalizations.of(context)
                                          .translate('mail'),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  cursorColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      labelText: AppLocalizations.of(context)
                                          .translate('pass'),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                child: RaisedButton(
                                  elevation: 10,
                                  color: Colors.white,
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('connection'),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                PasswordForgotten()));
                                              },
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('pass_oublier'),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 50,
                                              height: 3,
                                              child: Container(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: double.infinity,
                                        height: 20,
                                        child: RaisedButton(
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('creer_compte'),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            RegisterPage()));
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
