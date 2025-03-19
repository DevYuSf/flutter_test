import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.lightBlue,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text, style: AppStyle.headLineStye3)
        ],
      ),
    );
  }
}
