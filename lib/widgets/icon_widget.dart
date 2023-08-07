import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconWidget extends StatelessWidget {
  IconWidget({super.key, required this.icon});

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 35,
    );
  }
}
