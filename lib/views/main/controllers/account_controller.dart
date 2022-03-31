import 'package:dari/widgets/setting_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {

  final controller = PageController(
    viewportFraction: 0.9,
    keepPage: true,
  );

  final List<Widget> _settings = [
    const SettingItem(
      leftImage: 'assets/account_unselected_icon.png',
      name: 'Language',
      rightImage: 'assets/arrow_icon.png',
    ),


  ];



  get settings => _settings;




}