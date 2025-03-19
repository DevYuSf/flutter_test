import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  final TextAlign align;
  final double? fontSize;
  final bool? isGrey;
  const TextStyleThird({
    super.key,
    required this.text,
    this.isColor,
    this.isGrey,
    this.align = TextAlign.start,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyle.headLineStye3.copyWith(color: Colors.white)
          : isGrey == null
              ? fontSize == null
                  ? AppStyle.headLineStye3
                  : AppStyle.headLineStye3
                      .copyWith(fontSize: fontSize, fontWeight: FontWeight.bold)
              : AppStyle.headLineStye3.copyWith(color: Colors.blueGrey),
    );
  }
}
