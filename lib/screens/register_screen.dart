import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
