import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          AppTabs(
            tabText: firstTab,
          ),
          AppTabs(
            tabText: secondTab,
            tabBorder: true,
            tabColor: true,
          )
        ],
      ),
    );
  }
}
