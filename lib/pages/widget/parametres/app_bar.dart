import 'package:flutter/material.dart';

Widget appbar() {
  return Container(
    color: Color.fromRGBO(39, 28, 12, 1),
    height: 80,
    child: Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Image.asset(
                'assets/logo/logo.png',
                height: 40,
              )),
          Expanded(
            flex: 5,
            child: Text('Paramètres General',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ],
      ),
    ),
  );
}
