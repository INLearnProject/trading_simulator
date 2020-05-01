import 'package:flutter/material.dart';

Widget cardVueProfil() {
  return Container(
    width: 350,
    height: 130,
    margin: EdgeInsets.only(top: 100, left: 30),
    child: Card(
      elevation: 4,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 15,
            top: 5,
            child: RaisedButton(
              elevation: 10,
              color: Color.fromRGBO(39, 28, 12, 1),
              child: Text(
                'Modifier Profil',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                print('object');
                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(
                //         builder: (context) => ParametrePage()));
              },
            ),
          ),
          Positioned(
              left: 150,
              top: 40,
              child: Column(
                children: <Widget>[
                  Text(
                    'Jackob Jelly',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('jackobjelly230@crypto.com'),
                ],
              ))
        ],
      ),
    ),
  );
}
