import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  ActionButton({super.key, required this.icon, required this.text});
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
