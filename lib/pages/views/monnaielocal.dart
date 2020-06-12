import 'package:flutter/material.dart';

import 'package:trading_simulator/app_localizations.dart';

class MonnaieLocal extends StatefulWidget {
  @override
  _MonnaieLocalState createState() => _MonnaieLocalState();
}

class _MonnaieLocalState extends State<MonnaieLocal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(AppLocalizations.of(context).translate('monnaie_local')),
      ),
    );
  }
}
