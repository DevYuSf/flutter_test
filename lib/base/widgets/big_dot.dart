import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : AppStyle.ticketBlue),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
