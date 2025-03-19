import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: tabColor == false ? Colors.white : AppStyle.grey,
            borderRadius: tabBorder == false
                ? const BorderRadius.horizontal(left: Radius.circular(40))
                : const BorderRadius.horizontal(right: Radius.circular(40))),
        child: Center(child: Text(tabText, style: AppStyle.headLineStye4)),
      ),
    );
  }
}
