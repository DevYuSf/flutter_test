import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:const EdgeInsets.all(15),

          width: size.width*.44,
          height: 430,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:const[BoxShadow(
                blurRadius: 1,
                spreadRadius: .5,
                color: Colors.grey,
              )]


          ),
          child: Column(
            children: [
              Container(
                height:200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppMedia.planeSit))
                ),
              ),
              const SizedBox(height: 10,),
              Text("20% discount on the early morning don't miss this opportunity",style: AppStyle.headLineStye2,)
            ],
          ),
        ),
        Column(

          children: [
            Stack(
              children: [
                Container(
                  width: size.width*.44,
                  height: 210,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff3ab8b8)
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor the Survey",style: AppStyle.headLineStye2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      //const SizedBox(height: 5,),
                      Text("Take the Survey for our Services to get discount",style: AppStyle.headLineStye2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),),

                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding:const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppStyle.circleColor,width: 18),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              width: size.width*.44,
              height: 210,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffec6545)
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Take love",style: AppStyle.headLineStye1.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  const SizedBox(height: 10,),
                  Text("😍😉",style: AppStyle.headLineStye2.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 50,
                      color: Colors.white
                  ),),

                ],
              ),
            ),
          ],
        )

      ],
    );
  }
}
