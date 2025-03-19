import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bg,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning Yusuf",
                          style: AppStyle.headLineStye3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyle.headLineStye1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo)),
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.blue,
                      ),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map((singleTicket) => GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(singleTicket);
                                Navigator.pushNamed(
                                    context, AppRoutes.ticketScreen,
                                    arguments: {"index": index});
                              },
                              child: TicketView(
                                ticket: singleTicket,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View all",
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                const SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .map((singeHotel) => GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.hotelDetail,
                                      arguments: {"hotel": singeHotel});
                                },
                                child: Hotel(hotel: singeHotel)))
                            .toList())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
