import 'package:flutter/material.dart';

class AppGradients {
  final primary = LinearGradient(
    colors: [
      Colors.deepPurple.shade400,
      Colors.blue.shade400,
      Colors.orange.shade400,
      Colors.pink.shade300,
      Colors.white,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
