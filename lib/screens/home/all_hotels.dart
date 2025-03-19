import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bg,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyle.bg,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,


            ),
          itemCount: hotelList.length,
          itemBuilder: (BuildContext context, int index) {
              return HotelGridView(hotel: hotelList[index]);
          },),
      ),
    );
  }
}


class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(

      onTap: (){
       // var index = ticketList.indexOf(singleHotel);
        Navigator.pushNamed(context, AppRoutes.hotelDetail,arguments:{ "hotel":hotel});
       // print(hotel);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topLeft,
       // width: size.width * .60,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: AppStyle.ticketBlue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.4,
              child: Container(
               // height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotel["image"]}")),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),

            Text(
              hotel["place"],
              style: AppStyle.headLineStye3
                  .copyWith(color: const Color.fromARGB(255, 209, 189, 189)),
            ),
            Row(
              children: [


                Text(
                  hotel["destination"],
                  style: AppStyle.headLineStye4.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "\$${hotel["price"]}/night",
                  style: AppStyle.headLineStye4.copyWith(color: AppStyle.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}