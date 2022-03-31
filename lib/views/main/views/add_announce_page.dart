import 'package:dari/views/main/controllers/add_announce_controller.dart';
import 'package:dari/widgets/cart_counter.dart';
import 'package:dari/widgets/custom_radio.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'bottom_sheet_pick_picture_dialog.dart';

class AddAnouncePage extends StatelessWidget {
  final AddAnnounceController _controller = Get.put(AddAnnounceController());

  AddAnouncePage({Key? key}) : super(key: key);
  String selectedValue = "Mahdia";
  String selectedValueType = "Villa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajouter une nouvelle annonce',
                  style: TextStyle(
                    color: Color(0xff374151),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(
                  field: "Titre",
                  placeholder: "Entrez votre titre",
                  controller: _controller.name,
                ),
                InputField(
                  field: "Description",
                  placeholder: "Entrez votre description",
                  controller: _controller.description,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Type",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    value: selectedValueType,
                    onChanged: (String? newValue) {},
                    items: _controller.dropdownItemsType),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Ville",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    value: selectedValue,
                    onChanged: (String? newValue) {},
                    items: _controller.dropdownItemsVille),
                InputField(
                  field: "Adresse compléte",
                  placeholder: "Entrez votre adresse compléte",
                  controller: _controller.description,
                ),
                InputField(
                  field: "Prix",
                  placeholder: "Entrez votre prix",
                  controller: _controller.description,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "La nombre des chambres",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                Center(
                  child: CartCounter(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "La nombre des salles des bains",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff374151),
                    ),
                  ),
                ),
                Center(
                  child: CartCounter(),
                ),
                Column(
                  children: <Widget>[
                    CheckboxListTile(
                      title: const Text('Vue sur mer'),
                      value: _controller.valuefirst,
                      onChanged: (value) {
                        _controller.valuefirst = value!;
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Ascenseur'),
                      value: _controller.valuesecond,
                      onChanged: (value) {
                        _controller.valuesecond = value!;
                      },
                    ),
                  ],
                ),
                GetX<AddAnnounceController>(
                  builder: (controller) {
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.listImages.length,
                      itemBuilder: (context, int index) {
                        return InkWell(
                            onTap: () => {
                              if(index==0){
                                BottomSheetPickPictureDialog(
                                    context,
                                        () async =>  {
                                          controller.addImage(),
                                        Navigator.pop(context),

                                }, () async =>  {
                                  controller.addImage(),
                                  Navigator.pop(context),

                                })


                              }else{
                                controller.removeImage(index),

                              }
                            },
                            child: controller.listImages[index]);
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: (1),
                      ),
                    );
                  },
                ),

                const SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  title: "Sauvegarder",
                  onPressed: () => {},
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
