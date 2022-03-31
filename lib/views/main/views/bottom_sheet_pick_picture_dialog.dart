import 'package:dari/config/app_colors.dart';
import 'package:dari/views/models/Item.dart';
import 'package:dari/widgets/cart_counter.dart';
import 'package:dari/widgets/custom_radio.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/material.dart';



void BottomSheetPickPictureDialog(
    BuildContext context,Function() onPressedCamera,Function() onPressedGallery) {
  showModalBottomSheet(
    context: context,
     isDismissible: true,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
    builder: (BuildContext context) {
      return SizedBox(
        height: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child:  Text(
                  'Choisissez une photo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              InkWell(
                onTap: onPressedCamera,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Caméra',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              InkWell(
                onTap: onPressedGallery,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.camera,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Galerie',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}