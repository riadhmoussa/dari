import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/controllers/mes_announces_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_announce_page.dart';

class BookmarkPage extends StatefulWidget {
  final _controller = MesAnnouncesController();

   BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: widget._controller.listAnnounces.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                      onTap: ()=> {
                       if(index==0){
                         Get.to(AddAnouncePage())
                       }

                      }, child: widget._controller.listAnnounces[index]);
                }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (1),

              ),
              ),
            ),
          ),


      ),
    );
  }
}
