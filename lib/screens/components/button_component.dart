import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;

  ComponentButton({
    @required this.buttonname,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: onPressed,
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 17.0),
        ),
        color: Colors.blueAccent,
      ),
    );
  }
}
