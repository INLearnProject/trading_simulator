import 'package:flutter/material.dart';

Widget imgProfilUser() {
  return Positioned(
    top: 160,
    left: 60,
    child: Align(
      alignment: Alignment.centerLeft,
      child: Image.asset(
        'assets/images/user.png',
        height: 100,
      ),
    ),
  );
}
