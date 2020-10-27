import 'package:flutter/material.dart';

class ComponentErrorDialog extends StatelessWidget {
  final String errorCode;

  ComponentErrorDialog(this.errorCode);

  @override
  Widget build(BuildContext context) {
    String _message = "";
    switch (errorCode) {
      case "ERROR_USER_NOT_FOUND":
      case "ERROR_USER_NOT_FOUND":
        _message = "Les intendifiants sont incorrects, merci de réessayer.";
        print("OK");
        break;
      default:
        _message =
            "Une erreur inattendu est survenue, merci de réessayer dans quelques minutes";
        print("default");
      // break;
    }
    return 
     SimpleDialog(
            title: Text(
              "Erreur",
              style: TextStyle(color: Colors.red),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_message),
              ),
              FlatButton(
                child: Text("Fermer"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          );
        
  }
  }
