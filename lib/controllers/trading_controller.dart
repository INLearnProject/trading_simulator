import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TradingController extends ChangeNotifier {
  final FirebaseAuth _firebase = FirebaseAuth.instance;
  final Firestore _cloundFirestore = Firestore.instance;

  FirebaseUser activeUser;

  Future<FirebaseUser> checkIdentity({
    void onAuth(),
    void onNoAuth(),
  }) async {
    final FirebaseUser _user = await _firebase.currentUser();
    if (_user == null) {
      if (onNoAuth != null) {
        onNoAuth();
      }
    } else {
      if (onAuth != null) {
        onAuth();
      }
      activeUser = _user;
    }
    print(activeUser);
    if (activeUser == null) {
      return Future.error("L'utilisateur est null");
    }
    return activeUser;
  }

  void signOut() {
    _firebase.signOut();
  }
}
