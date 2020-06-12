import 'package:flutter/material.dart';

import 'package:trading_simulator/app_localizations.dart';

class InfoApp extends StatefulWidget {
  @override
  _InfoAppState createState() => _InfoAppState();
}

class _InfoAppState extends State<InfoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(AppLocalizations.of(context).translate('info')),
      ),
    );
  }
}
