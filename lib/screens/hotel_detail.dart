import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/controller/bottom_nav_bar_controller.dart';

late Map<String, dynamic> hotel;

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var arg = ModalRoute.of(context)!.settings.arguments as Map;
      // print("passed argument is ${arg["hotel"]}");
      hotel = arg["hotel"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 300,
          leading: Container(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppStyle.primaryColor),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            // title: Text(hotel["place"],style: AppStyle.headLineStye2.copyWith(color: Colors.white),),
            background: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotel["image"]}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 280,
                  right: 30,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.5)),
                    child: Text(
                      hotel["place"],
                      style: AppStyle.headLineStye2
                          .copyWith(color: Colors.white, shadows: [
                        Shadow(blurRadius: 10.0, color: AppStyle.primaryColor)
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: const EdgeInsets.all(16.0), child: ExpendedTextWidget()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "More Images",
              style: AppStyle.headLineStye2,
            ),
          ),
          SizedBox(
            height: 200,
            // margin: EdgeInsets.all(16),
            //alignment: Alignment.topLeft,
            child: ListView.builder(
              itemCount: hotel["images"].length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.all(16),
                    child:
                        Image.asset("assets/images/${hotel["images"][index]}"));
              },
            ),
          )
        ]))
      ]),
    );
  }
}

class ExpendedTextWidget extends StatelessWidget {
  ExpendedTextWidget({super.key});
  final ToggleExpansionController toggleExpansionController =
      Get.put(ToggleExpansionController());

  // toggleExpansion() {
  @override
  Widget build(BuildContext context) {
    String text = hotel["detail"];

    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: toggleExpansionController.isExpanded.value ? null : 9,
        overflow: toggleExpansionController.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              toggleExpansionController.toggleExpansion();
            },
            child: Text(
              toggleExpansionController.isExpanded.value ? 'Less' : 'More',
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
            ),
          )
        ],
      );
    });
  }
}
