import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bg,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What are\nyou looking for",
                  style: AppStyle.headLineStye1.copyWith(fontSize: 35),
                ),

                const SizedBox(
                  height: 20,
                ),
                //App Tabs
                const AppTicketTabs(
                  firstTab: "Airplane Tickets",
                  secondTab: "Hotels",
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppTextIcon(
                  text: "Departure",
                  icon: Icons.flight_takeoff_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppTextIcon(
                  text: "Arrive",
                  icon: Icons.flight_land_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Find Ticket",
                          style: AppStyle.headLineStye3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func: () => Navigator.pushNamed(context, "all_tickets"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TicketPromotion()
              ],
            ),
          )
        ],
      ),
    );
  }
}
