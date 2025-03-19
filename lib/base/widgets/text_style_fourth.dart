import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyle.headLineStye4.copyWith(color: Colors.white)
          : AppStyle.headLineStye4.copyWith(color: Colors.blueGrey),
    );
  }
}
