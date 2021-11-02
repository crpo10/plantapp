import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.texto = '',
    required this.color,
    required this.onPressed,
    this.width = 200,
    required this.colorText,
  }) : super(key: key);

  final String texto;
  final Color color, colorText;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        height: 70,
        minWidth: this.width,
        onPressed: this.onPressed,
        child: Text(
          this.texto,
          style: TextStyle(
            fontSize: height * 0.025,
            color: this.colorText,
          ),
        ),
        color: this.color,
      ),
    );
  }
}
