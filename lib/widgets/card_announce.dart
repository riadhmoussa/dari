import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/views/add_announce_page.dart';
import 'package:dari/views/main/views/details_announce_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardAnnounce extends StatefulWidget {
  final String name;
  final String price;
  final String remise;

  const CardAnnounce({Key? key, this.name = "", this.price = "", this.remise = ""}) : super(key: key);

  @override
  State<CardAnnounce> createState() => _CardAnnounceState();
}

class _CardAnnounceState extends State<CardAnnounce> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{
        Get.to(DetailsAnnouncePage())
      },
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius:
            BorderRadius.all(Radius.circular(10.0))),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
         child: Wrap(
           children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topRight:  Radius.circular(10),topLeft:  Radius.circular(10)),
                  child: Image.asset(
                    "assets/img_4.jpg",
                    height: (100.0),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            Stack(
              children:[
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      SizedBox(height: 10,),
                      const Text(
                        "Studio Apartment",
                        softWrap: false,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 12),
                      ),
                      SizedBox(height: 5,),
                      const Text(
                        "TND 23,456",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.delete ,size: 30,color: AppColors.redColor,),
                          SizedBox(),
                          Icon(Icons.edit,size: 30,color: Colors.green,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ],
            )

           ],
         ),
      ),
    );
  }
}
