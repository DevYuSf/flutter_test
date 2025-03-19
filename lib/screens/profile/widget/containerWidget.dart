import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppStyle.profileTextColor,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                  size: 40,
                ),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You've got a new award",
                    style: AppStyle.headLineStye3.copyWith(color: Colors.white),
                  ),
                  Text(
                    "You have 95 flights in a year",
                    style: AppStyle.textStyle.copyWith(
                        color: const Color.fromARGB(255, 230, 230, 230)),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: -45,
          top: -40,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue.shade900, width: 18),
            ),
          ),
        )
      ],
    );
  }
}
