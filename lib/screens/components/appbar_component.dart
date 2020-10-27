import 'package:flutter/material.dart';

class ComponentAppBar {
  final String titleAppBar;
  final List<Widget> actions;

  ComponentAppBar({
    @required this.titleAppBar,
    this.actions,
  });

  PreferredSizeWidget build() {
    return AppBar(
      actions: actions ?? null,
      title: Text(
        "Trading $titleAppBar",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}
