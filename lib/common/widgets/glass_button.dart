import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  final String buttonText;
  const GlassButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.2),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
      ),
      child: Text(buttonText, style: TextStyle(color: Colors.white)),
    );
  }
}
