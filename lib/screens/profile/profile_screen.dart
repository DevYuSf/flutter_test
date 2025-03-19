import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/screens/profile/widget/containerWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppStyle.bg,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.15,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Book Tickets", style: AppStyle.headLineStye1),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "New-Yock",
                        style: AppStyle.headLineStye4
                            .copyWith(color: AppStyle.grey),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                            color: AppStyle.profileLocationColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppStyle.profileTextColor),
                              child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Premium status",
                              style: AppStyle.headLineStye4
                                  .copyWith(color: AppStyle.profileTextColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Edit",
                    style: AppStyle.headLineStye3
                        .copyWith(color: AppStyle.primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Divider(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Containerwidget(),
            SizedBox(
              height: size.height * 0.03,
            ),
            const TextStyleThird(
              text: "Accumulated miles",
              isColor: true,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            const TextStyleThird(
              text: "893782",
              isColor: true,
              fontSize: 30,
              align: TextAlign.center,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppColumnTextLayout(
                  bottomText: "Males accumulated",
                  isColor: true,
                ),
                AppColumnTextLayout(
                  bottomText: "16 march 2025",
                  isColor: true,
                  alignment: CrossAxisAlignment.end,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Divider(),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnTextLayout(
                    topText: "23 907",
                    bottomText: "Males",
                    isColor: true,
                  ),
                  AppColumnTextLayout(
                    topText: "Airline co",
                    bottomText: "Received from",
                    isColor: true,
                    alignment: CrossAxisAlignment.end,
                  )
                ]),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnTextLayout(
                    topText: "24",
                    bottomText: "Males",
                    isColor: true,
                  ),
                  AppColumnTextLayout(
                    topText: "McDoanal's",
                    bottomText: "Received from",
                    isColor: true,
                    alignment: CrossAxisAlignment.end,
                  )
                ]),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppColumnTextLayout(
                  topText: "56 890",
                  bottomText: "Males",
                  isColor: true,
                ),
                AppColumnTextLayout(
                  topText: "DBestech",
                  bottomText: "Received from",
                  isColor: true,
                  alignment: CrossAxisAlignment.end,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Text(
                "How to get more miles",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: AppStyle.ticketBlue,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
