import 'package:flutter/material.dart';

Widget cardAutresparams() {
  return Container(
    height: 300,
    margin: EdgeInsets.only(top: 290),
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 10,
                        child: Text(
                          'Monnaie locale',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.black.withOpacity(0.20),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 2,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 10,
                        child: Text(
                          'Changer de langue',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.black.withOpacity(0.20),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 2,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 10,
                        child: Text(
                          'Contactez-nous',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.black.withOpacity(0.20),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                height: 2,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 10,
                        child: Text(
                          'Info de l\'application',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.black.withOpacity(0.20),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
