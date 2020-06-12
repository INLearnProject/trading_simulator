import 'package:flutter/material.dart';

import 'package:trading_simulator/app_localizations.dart';

class ContactezNous extends StatefulWidget {
  @override
  _ContactezNousState createState() => _ContactezNousState();
}

class _ContactezNousState extends State<ContactezNous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(AppLocalizations.of(context).translate('contact_nous')),
      ),
    );
  }
}
