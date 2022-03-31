import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/views/add_announce_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCardBtn extends StatefulWidget {
  final String name;
  final String price;
  final String remise;

  const AddCardBtn({Key? key, this.name = "", this.price = "", this.remise = ""}) : super(key: key);

  @override
  State<AddCardBtn> createState() => _AddCardBtnState();
}

class _AddCardBtnState extends State<AddCardBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius:
            BorderRadius.all(Radius.circular(10.0))),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: const Icon(
          Icons.add_box,
          color: AppColors.whiteColor,

        )
    );
  }
}
