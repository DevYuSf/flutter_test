import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/bottom_nav_bar_controller.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/profile/profile_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final appSreen = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];
  final BottomNavBarController _controller = Get.put(BottomNavBarController());

  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: appSreen[_controller.SelectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _controller.SelectedIndex.value,
            onTap: _controller.OnTappedItem,
            iconSize: 35,
            showSelectedLabels: false,
            unselectedItemColor: Colors.blueGrey,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profile"),
            ]),
      );
    });
  }
}
