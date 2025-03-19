import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TicketPositionedCircles extends StatelessWidget {
  const TicketPositionedCircles({super.key,this.pos});
  final bool? pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left:pos==true?20:null,
      right: pos==true?null:20,
      top: 260,
      child: Container(
        padding:const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,border: Border.all(width: 2,color: AppStyle.textColor)
        ),
        child: CircleAvatar(
          maxRadius: 5,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
