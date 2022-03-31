import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/controllers/details_announce_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsAnnouncePage extends StatefulWidget {
  final _controller = DetailsControllerPageController();

   DetailsAnnouncePage({Key? key}) : super(key: key);

  @override
  State<DetailsAnnouncePage> createState() => _DetailsAnnouncePageState();
}

class _DetailsAnnouncePageState extends State<DetailsAnnouncePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Padding(
        padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
        child: RaisedButton(
          onPressed: () {
            launch("tel://+21653665213");

          },
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.phone, color: Colors.white),
              SizedBox(width: 10),
              Text("Appel", style: TextStyle(color: Colors.white,fontSize: 14)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 23),
          decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Wrap(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/img_4.jpg",
                    height: (350.0),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: ()=> {Get.back()},
                        child: const Padding(
                            padding: EdgeInsets.only(top: 54,left: 15),
                            child: Icon(Icons.keyboard_arrow_left_sharp,color: AppColors.whiteColor,size: 44,)),
                      ),

                    ],
                  ),
                ],
              ),
              Container(
                color: AppColors.blackColor,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Wrap(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "TND 23,456",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    "Studio Apartment",
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top:10),
                                child: Text("23 Cross, HRBR Layout, Bangalore",
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12)),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Divider(color: AppColors.whiteColor,),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/bed_white_icon.png",
                                        height: (15.0),
                                        width: (23.0),
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text("3 Bed",
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 12))
                                    ],
                                  ),
                                  const SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/bath_white_icon.png",
                                        height: (15.0),
                                        width: (23.0),
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text("2 Bath",
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 12))
                                    ],
                                  ),
                                  const SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/car_white_icon.png",
                                        height: (15.0),
                                        width: (23.0),
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text("2 Parking",
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 20),
                child: SizedBox(
                  height: 111,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Image border
                          child: Image.asset('assets/img_5.jpg',width: 102,height: 111, fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 27,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Descriptions",style: TextStyle(fontSize: 20,color: AppColors.blackColor),),
                  SizedBox(height: 18,),
                  Text("Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore Magna Aliquyam Erat, Sed Diam Voluptua. At Vero Eos Et Accusam Et Justo Duo Dolores Et Ea Rebum. Stet Clita Kasd Gubergren, No Sea Takimata Sanctus Est Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet",style: TextStyle(fontSize: 14,color: AppColors.blackColor),),
                  SizedBox(height: 100,),
                ],
              ),)


            ],
          ),
        ),
      )
    );
  }
}
