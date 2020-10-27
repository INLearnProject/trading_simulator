import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:toast/toast.dart';

import '../constants/routes_constant.dart';

import 'components/appbar_component.dart';
import 'components/button_component.dart';
import 'components/textformfield_component.dart';
import 'components/error_dialog_component.dart';

class SigninScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebase = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    String _email = "";
    String _password = "";

    return Scaffold(
      appBar: ComponentAppBar(titleAppBar: ": se connecter").build(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              ComponentTextFormField(
                obscure: false,
                validator: (email) {
                  if (!EmailValidator.validate(email.replaceAll(" ", ""))) {
                    return "L'adresse email est invalide";
                  }
                  return null;
                },
                hintText: "Adresse Email",
                onSaved: (emailSaved) {
                  _email = emailSaved.replaceAll(" ", "");
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ComponentTextFormField(
                obscure: true,
                validator: (mdp) {
                  if (mdp.length < 6) {
                    return "Le mot de passe doit contenir au minimun 6 caractère";
                  } else if (!mdp.contains("@")) {
                    return "Le mot de passe doit contenir un '@'";
                  }
                },
                hintText: "Mot de passe",
                onSaved: (passwordSaved) {
                  _password = passwordSaved;
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              ComponentButton(
                buttonname: "Se connecter",
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    try {
                      final FirebaseUser user =
                          (await _firebase.signInWithEmailAndPassword(
                        email: _email,
                        password: _password,
                      ))
                              .user;
                      Toast.show("Connecté", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          RoutesConstant.userHome,
                          (Route<dynamic> route) => false);
                      print(user);
                    } catch (error) {
                      print(error);
                      showDialog(
                          context: context,
                          builder: (context) =>
                              ComponentErrorDialog(error.code));
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
