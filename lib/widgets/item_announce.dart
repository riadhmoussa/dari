import 'package:dari/config/app_colors.dart';
import 'package:dari/config/app_styles.dart';
import 'package:dari/views/main/views/details_announce_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemAnnounce extends StatefulWidget {
  final String name;
  final String price;
  final String remise;

  const ItemAnnounce(
      {Key? key, this.name = "", this.price = "", this.remise = ""})
      : super(key: key);

  @override
  State<ItemAnnounce> createState() => _ItemAnnounceState();
}

class _ItemAnnounceState extends State<ItemAnnounce> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{
        Get.to(DetailsAnnouncePage())
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 23),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: new BorderRadius.all(Radius.circular(10.0))),
        child: Wrap(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/img_4.jpg",
                    height: (160.0),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Image.asset(
                              "assets/bookmark_selected.png",
                              height: (44.0),
                              width: (44.0),
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Wrap(
                children: [
                  Row(
                    children: [
                      const Text(
                        "TND 23,456",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Studio Apartment",
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.5),
                            fontSize: 12),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Text("23 Cross, HRBR Layout, Bangalore",
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(0.5),
                            fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/bed_blue_icon.png",
                              height: (15.0),
                              width: (23.0),
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("3 Bed",
                                style: TextStyle(
                                    color: Color(0xFF000000).withOpacity(0.5),
                                    fontSize: 12))
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/bath_blue_icon.png",
                              height: (15.0),
                              width: (23.0),
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("2 Bath",
                                style: TextStyle(
                                    color: Color(0xFF000000).withOpacity(0.5),
                                    fontSize: 12))
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/car_blue_icon.png",
                              height: (15.0),
                              width: (23.0),
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("2 Parking",
                                style: TextStyle(
                                    color: Color(0xFF000000).withOpacity(0.5),
                                    fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
