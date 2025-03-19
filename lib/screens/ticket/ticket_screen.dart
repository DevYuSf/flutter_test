import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_leyoutbuilder_widgit.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var arg = ModalRoute.of(context)!.settings.arguments as Map;
      // print("passed argument is ${arg["index"]} what");
      ticketIndex = arg["index"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bg,
      appBar: AppBar(
        title: const Text("Tickets"),
        backgroundColor: AppStyle.bg,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            children: [
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: AppStyle.ticketColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter BD",
                          bottomText: "Passenger",
                          isColor: false,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 56789",
                          bottomText: "Passport",
                          isColor: false,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLeyoutbuilderWidgit(
                      randomDevitor: 16,
                      width: 5,
                      isColor: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2345 4347347388281",
                          bottomText: "Number of E-Ticket",
                          isColor: false,
                        ),
                        AppColumnTextLayout(
                          topText: "B23768",
                          bottomText: "Booking code",
                          isColor: false,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLeyoutbuilderWidgit(
                      randomDevitor: 16,
                      width: 5,
                      isColor: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                const Text(" ***2499")
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payment method",
                              style: AppStyle.headLineStye4
                                  .copyWith(color: Colors.blueGrey),
                            )
                          ],
                        ),
                        const AppColumnTextLayout(
                          topText: "\$249.99",
                          bottomText: "Price",
                          isColor: false,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                    color: AppStyle.ticketColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: BarcodeWidget(
                      height: 100,
                      data: 'https://www.google.com',
                      barcode: Barcode.code128(),
                      color: AppStyle.textColor,
                      drawText: false,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex])),
            ],
          ),
          const TicketPositionedCircles(pos: true),
          const TicketPositionedCircles(pos: null),
        ],
      ),
    );
  }
}
