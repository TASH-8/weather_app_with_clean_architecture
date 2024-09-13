import 'package:flutter/material.dart';

class TextCustomWidget extends StatelessWidget {
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String textInput;
  const TextCustomWidget(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.textInput,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      textInput,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
    );
  }
}
