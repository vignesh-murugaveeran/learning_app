import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GlassTextfield extends StatelessWidget {
  final String name;
  final String label;
  final String hint;
  final TextInputType type;
  const GlassTextfield({
    super.key,
    required this.name,
    required this.label,
    required this.hint,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.7)),
        ),
      ),
      keyboardType: type,
    );
  }
}
