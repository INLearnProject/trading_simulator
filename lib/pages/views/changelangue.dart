import 'package:flutter/material.dart';

import 'package:trading_simulator/app_localizations.dart';

class ChangeLangue extends StatefulWidget {
  @override
  _ChangeLangueState createState() => _ChangeLangueState();
}

class _ChangeLangueState extends State<ChangeLangue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(AppLocalizations.of(context).translate('change_langue')),
      ),
    );
  }
}
