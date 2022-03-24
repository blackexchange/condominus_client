import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  VoidCallback? onClicked;

  MenuItem({required this.text, required this.icon, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      hoverColor: Colors.redAccent,
      title: Text(text, style: TextStyle(color: Colors.white)),
      onTap: onClicked,
    );
  }
}
