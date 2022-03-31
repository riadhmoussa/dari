
import 'package:dari/widgets/add_card.dart';
import 'package:dari/widgets/card_announce.dart';
import 'package:dari/widgets/item_announce.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MesAnnouncesController extends GetxController {

  get listAnnounces => _listAnnounces;


  final List<Widget> _listAnnounces = [
    const AddCardBtn(),
    const CardAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const CardAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const CardAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const CardAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),
    const CardAnnounce(
      name: 'Coca Cola',
      price: "25",
      remise: "50% Off",
    ),

  ];
}
