import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(12),
      alignment: Alignment.topLeft,
      width: size.width * .60,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: AppStyle.ticketBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}")),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel["place"],
            style: AppStyle.headLineStye1
                .copyWith(color: const Color.fromARGB(255, 209, 189, 189)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel["destination"],
            style: AppStyle.headLineStye3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\$${hotel["price"]}/night",
            style: AppStyle.headLineStye1.copyWith(color: AppStyle.grey),
          )
        ],
      ),
    );
  }
}
