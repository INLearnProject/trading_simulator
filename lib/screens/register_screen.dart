import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:toast/toast.dart';

import 'components/appbar_component.dart';
import 'components/textformfield_component.dart';
import 'components/button_component.dart';

import '../constants/routes_constant.dart';

class RegisterScreen extends StatelessWidget {
  final FirebaseAuth _firebase = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String _email = "";
    String _password = "";

    return Scaffold(
      appBar: ComponentAppBar(titleAppBar: ": S'inscrire").build(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ComponentTextFormField(
                obscure: false,
                validator: (email) {
                  if (!EmailValidator.validate(email.replaceAll(" ", ""))) {
                    return "Merci d'enter une adresse email correcte.";
                  }
                  return null;
                },
                hintText: "Adresse email",
                onSaved: (value) {
                  _email = value.replaceAll(" ", "");
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ComponentTextFormField(
                obscure: false,
                controller: _passController,
                validator: (mdp) {
                  if (mdp.length < 6) {
                    return "Le mot de passe doit contenir au minimun 6 caractère";
                  } else if (!mdp.contains("@")) {
                    return "Le mot de passe doit contenir un '@'";
                  }
                },
                hintText: "Mot de passe",
                onSaved: (value) {
                  _password = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ComponentTextFormField(
                obscure: false,
                validator: (confirmMdp) {
                  if (confirmMdp.isEmpty) {
                    return "Merci de contirmer votre mot de passe";
                  } else if (confirmMdp != _passController.text) {
                    return "La confirmation du mot de passe n'est pas identique au mot de passe";
                  }
                  return null;
                },
                hintText: "Confirmer mot de passe",
                onSaved: (value) {},
              ),
              ComponentButton(
                buttonname: "Sinscrire",
                onPressed: () async {
                  try {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      final FirebaseUser user =
                          (await _firebase.createUserWithEmailAndPassword(
                        email: _email,
                        password: _password,
                      ))
                              .user;
                      Toast.show("Inscription réussie", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          RoutesConstant.userHome,
                          (Route<dynamic> route) => false);
                      print(user);
                    }
                  } catch (error) {
                    print(error);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
