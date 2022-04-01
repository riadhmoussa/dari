
import 'package:dari/widgets/item_announce.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomePageController extends GetxController {

  final RxList<Widget> listAnnounces = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();
    listAnnounces.add( const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ));
    listAnnounces.add(const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ));
    listAnnounces.add(const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ));
    listAnnounces.add(const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ));
    listAnnounces.add(const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ));

  }
}
