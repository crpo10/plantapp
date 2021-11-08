import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.onChanged,
    this.controller,
    this.validator,
    this.icon,
    this.label = '',
    this.obscureText = false,
  });

  final void Function(String text)? onChanged;
  final String label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Icon? icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: this.obscureText,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      // textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        prefixIcon: this.icon,
        label: Text(label),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hoverColor: Colors.white,
        focusColor: Colors.white,
      ),
    );
  }
}
