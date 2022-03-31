
import 'package:dari/widgets/item_announce.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomePageController extends GetxController {

  get listAnnounces => _listAnnounces;


  final List<Widget> _listAnnounces = [
    const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const ItemAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),

  ];
}
